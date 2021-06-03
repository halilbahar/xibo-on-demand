package at.htl.ondemand.service;

import at.htl.ondemand.model.OverlaySession;
import org.jboss.logging.Logger;

import javax.annotation.PostConstruct;
import javax.inject.Inject;
import javax.inject.Singleton;
import java.time.LocalDateTime;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

@Singleton
public class SessionService {

    private final Map<UUID, OverlaySession> sessions = new ConcurrentHashMap<>();

    @Inject
    volatile Logger log;

    @PostConstruct
    private void init() {
        ScheduledExecutorService executor = Executors.newScheduledThreadPool(1);
        executor.scheduleAtFixedRate(new SessionTimer(), 0, 1, TimeUnit.MINUTES);
    }

    public void addSession(Long layoutId, UUID uuid, Integer duration) {
        this.sessions.put(uuid, new OverlaySession(layoutId, duration));
    }

    public boolean getAndFinishSession(String uuidString) {
        UUID uuid = UUID.fromString(uuidString);

        if (!this.sessions.containsKey(uuid)) {
            return false;
        }

        this.sessions.remove(uuid);
        return true;
    }

    private class SessionTimer implements Runnable {
        @Override
        public void run() {
            LocalDateTime now = LocalDateTime.now();

            // If something got schedule but never got in touch with the server, remove it later
            SessionService.this.sessions.entrySet().removeIf(entry -> entry.getValue().createdAt
                    .plusSeconds(entry.getValue().duration)
                    .plusMinutes(10)
                    .isBefore(now)
            );

            String collect = SessionService.this.sessions.keySet().stream().map(UUID::toString).collect(Collectors.joining(" "));
            SessionService.this.log.infov("Current Session [{0}]", collect);
        }
    }
}
