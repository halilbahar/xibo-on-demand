package at.htl.ondemand.resource;

import at.htl.ondemand.service.XiboService;

import javax.inject.Inject;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

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
    @Path("schedule")
    public Response scheduleVideo() {
        return null;
    }
}
