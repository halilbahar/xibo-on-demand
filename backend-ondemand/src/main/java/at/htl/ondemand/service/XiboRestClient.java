package at.htl.ondemand.service;

import at.htl.ondemand.model.form.XiboTokenForm;
import at.htl.ondemand.model.xibo.XiboToken;
import org.eclipse.microprofile.rest.client.inject.RegisterRestClient;
import org.jboss.resteasy.annotations.providers.multipart.MultipartForm;

import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.core.MediaType;

@RegisterRestClient
public interface XiboRestClient {

    @POST
    @Path("/authorize/access_token")
    @Consumes(MediaType.MULTIPART_FORM_DATA)
    XiboToken getAccessToken(@MultipartForm XiboTokenForm data);
}
