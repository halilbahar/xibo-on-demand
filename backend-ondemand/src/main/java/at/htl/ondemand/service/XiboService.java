package at.htl.ondemand.service;

import at.htl.ondemand.model.xibo.Display;
import at.htl.ondemand.model.xibo.Media;
import org.eclipse.microprofile.config.inject.ConfigProperty;
import org.eclipse.microprofile.rest.client.inject.RestClient;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import java.util.List;
import java.util.Optional;

@ApplicationScoped
public class XiboService {

    @Inject
    @RestClient
    XiboRestClient xiboRestClient;

    @ConfigProperty(name = "on-demand.display-tag")
    Optional<String> displayTags;

    public List<Display> getDisplays() {
        String displayTags = this.displayTags.orElse("");
        return this.xiboRestClient.getDisplays(displayTags);
    }

    public List<Media> getVideos() {
        return this.xiboRestClient.searchLibrary("video");
    }
}
