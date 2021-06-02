package at.htl.ondemand.service;

import at.htl.ondemand.model.xibo.Display;
import org.eclipse.microprofile.rest.client.inject.RestClient;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import java.util.List;

@ApplicationScoped
public class XiboService {

    @Inject
    @RestClient
    XiboRestClient xiboRestClient;

    public List<Display> getDisplays() {
        return this.xiboRestClient.getDisplays();
    }
}
