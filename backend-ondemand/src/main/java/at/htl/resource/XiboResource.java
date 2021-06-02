package at.htl.resource;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Path("")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class XiboResource {

    @GET
    @Path("display")
    public Response getDisplays() {
        return null;
    }

    @GET
    @Path("video")
    public Response getVideos() {
        return null;
    }

    @POST
    @Path("video")
    public Response scheduleVideo() {
        return null;
    }
}
