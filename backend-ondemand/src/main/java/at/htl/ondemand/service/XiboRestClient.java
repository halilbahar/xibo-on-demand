package at.htl.ondemand.service;

import at.htl.ondemand.interceptor.XiboAuthentication;
import at.htl.ondemand.model.form.XiboTokenForm;
import at.htl.ondemand.model.xibo.Display;
import at.htl.ondemand.model.xibo.XiboToken;
import org.eclipse.microprofile.rest.client.inject.RegisterRestClient;
import org.jboss.resteasy.annotations.providers.multipart.MultipartForm;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.List;

@RegisterRestClient
public interface XiboRestClient {

    @POST
    @Path("authorize/access_token")
    @Consumes(MediaType.MULTIPART_FORM_DATA)
    XiboToken getAccessToken(@MultipartForm XiboTokenForm data);

    @GET
    @Path("display")
    @Produces(MediaType.APPLICATION_JSON)
    @XiboAuthentication
    List<Display> getDisplays(@QueryParam("tags") String tags);
}
