package at.htl.ondemand.resource;

import at.htl.ondemand.model.form.EmbeddedForm;
import at.htl.ondemand.model.xibo.Display;
import at.htl.ondemand.model.xibo.Layout;
import at.htl.ondemand.model.xibo.Media;
import at.htl.ondemand.service.EmbeddedService;
import at.htl.ondemand.service.XiboService;

import javax.inject.Inject;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.List;

@Path("")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class XiboResource {

    @Inject
    XiboService xiboService;

    @Inject
    EmbeddedService embeddedService;

    @GET
    @Path("display")
    public Response getDisplays() {
        return Response.ok(this.xiboService.getDisplays()).build();
    }

    @GET
    @Path("video")
    public Response getVideos() {
        return Response.ok(this.xiboService.getVideos()).build();
    }

    @POST
    @Path("schedule/{displayId}/{videoId}")
    public Response scheduleVideo(@PathParam("displayId") Long displayId, @PathParam("videoId") Long videoId) {
        // Check if display exists
        List<Display> displays = this.xiboService.getDisplays();
        boolean displayIdValid = false;
        for (Display display : displays) {
            if (display.displayId.equals(displayId)) {
                displayIdValid = true;
                break;
            }
        }
        if (!displayIdValid) {
            return Response.status(Response.Status.NOT_FOUND).build();
        }

        // Check if video exists
        boolean videoIdValid = false;
        List<Media> videos = this.xiboService.getVideos();
        Media selectedVideo = null;
        for (Media video : videos) {
            if (video.mediaId.equals(videoId)) {
                selectedVideo = video;
                videoIdValid = true;
                break;
            }
        }
        if (!videoIdValid) {
            return Response.status(Response.Status.NOT_FOUND).build();
        }

        // If everything is valid schedule
        // First create a layout
        Layout layout = this.xiboService.createLayout();

        // Then create a embedded with the correct video
        EmbeddedForm embeddedForm = this.embeddedService.generateEmbeddedHtml(videoId, selectedVideo.duration);
        this.xiboService.createEmbeddedHtml(layout.regions.get(0).regionPlaylist.playlistId, embeddedForm);
        this.xiboService.publishLayout(layout.parentId);

        // Finally schedule the overlay
        this.xiboService.scheduleOverlay(layout.campaignId, displayId);

        return Response.noContent().build();
    }
}
