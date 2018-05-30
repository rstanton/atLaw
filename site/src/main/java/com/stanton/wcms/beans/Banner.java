package com.stanton.wcms.beans;

import org.onehippo.cms7.essentials.dashboard.annotations.HippoEssentialsGenerated;
import org.hippoecm.hst.content.beans.Node;
import org.hippoecm.hst.content.beans.standard.HippoHtml;
import org.hippoecm.hst.content.beans.standard.HippoGalleryImageSet;
import org.hippoecm.hst.content.beans.standard.HippoBean;
import com.stanton.wcms.beans.Imageset;

@HippoEssentialsGenerated(internalName = "atLaw:bannerdocument")
@Node(jcrType = "atLaw:bannerdocument")
public class Banner extends BaseDocument {
    @HippoEssentialsGenerated(internalName = "atLaw:title")
    public String getTitle() {
        return getProperty("atLaw:title");
    }

    @HippoEssentialsGenerated(internalName = "atLaw:content")
    public HippoHtml getContent() {
        return getHippoHtml("atLaw:content");
    }

    @HippoEssentialsGenerated(internalName = "atLaw:link")
    public HippoBean getLink() {
        return getLinkedBean("atLaw:link", HippoBean.class);
    }

    @HippoEssentialsGenerated(internalName = "atLaw:image")
    public Imageset getImage() {
        return getLinkedBean("atLaw:image", Imageset.class);
    }
}
