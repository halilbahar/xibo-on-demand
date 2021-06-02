package at.htl.ondemand.resource;

import at.htl.ondemand.model.xibo.Display;
import at.htl.ondemand.model.xibo.Media;
import at.htl.ondemand.service.XiboService;
import io.smallrye.mutiny.Uni;

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
        for (Media video : videos) {
            if (video.mediaId.equals(videoId)) {
                videoIdValid = true;
                break;
            }
        }
        if (!videoIdValid) {
            return Response.status(Response.Status.NOT_FOUND).build();
        }

        // If everything is valid schedule

        return Response.noContent().build();
    }
}
