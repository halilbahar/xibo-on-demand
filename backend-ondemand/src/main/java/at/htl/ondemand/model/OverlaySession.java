package at.htl.ondemand.model;

import java.time.LocalDateTime;

public class OverlaySession {
    public Long layoutId;
    public Integer duration;
    public LocalDateTime createdAt;

    public OverlaySession(Long layoutId, Integer duration) {
        this.layoutId = layoutId;
        this.duration = duration;
        this.createdAt = LocalDateTime.now();
    }
}
