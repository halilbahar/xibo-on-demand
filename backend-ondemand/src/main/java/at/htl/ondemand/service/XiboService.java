package at.htl.ondemand.service;

import at.htl.ondemand.model.form.EmbeddedForm;
import at.htl.ondemand.model.form.LayoutForm;
import at.htl.ondemand.model.xibo.Display;
import at.htl.ondemand.model.xibo.Layout;
import at.htl.ondemand.model.xibo.Media;
import at.htl.ondemand.model.xibo.Widget;
import org.eclipse.microprofile.config.inject.ConfigProperty;
import org.eclipse.microprofile.rest.client.inject.RestClient;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Optional;

@ApplicationScoped
public class XiboService {

    @Inject
    @RestClient
    XiboRestClient xiboRestClient;

    @ConfigProperty(name = "on-demand.display-tag")
    Optional<String> displayTags;

    @ConfigProperty(name = "on-demand.media-tag")
    Optional<String> mediaTags;

    public List<Display> getDisplays() {
        String displayTags = this.displayTags.orElse("");
        return this.xiboRestClient.getDisplays(displayTags);
    }

    public List<Media> getVideos() {
        String mediaTags = this.mediaTags.orElse("");
        return this.xiboRestClient.searchLibrary("video", mediaTags);
    }

    public Layout createLayout() {
        String isoDateNow = LocalDateTime.now().format(DateTimeFormatter.ISO_LOCAL_DATE_TIME);
        Layout layout = this.xiboRestClient.createLayout(new LayoutForm("on-demand-" + isoDateNow));
        return this.xiboRestClient.getChildLayout(layout.layoutId, "regions,playlists,widgets").get(0);
    }


    public void createEmbeddedHtml(Long playlistId, EmbeddedForm embeddedForm) {
        Widget widget = this.xiboRestClient.createWidget("embedded", playlistId);
        this.xiboRestClient.updateEmbedded(widget.widgetId, embeddedForm);
    }
}
