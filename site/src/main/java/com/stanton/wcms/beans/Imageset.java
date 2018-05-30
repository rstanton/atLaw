package com.stanton.wcms.beans;

import org.onehippo.cms7.essentials.dashboard.annotations.HippoEssentialsGenerated;
import org.hippoecm.hst.content.beans.Node;
import org.hippoecm.hst.content.beans.standard.HippoGalleryImageSet;
import org.hippoecm.hst.content.beans.standard.HippoGalleryImageBean;

@HippoEssentialsGenerated(internalName = "atLaw:imageset")
@Node(jcrType = "atLaw:imageset")
public class Imageset extends HippoGalleryImageSet {
    @HippoEssentialsGenerated(internalName = "atLaw:small")
    public HippoGalleryImageBean getSmall() {
        return getBean("atLaw:small", HippoGalleryImageBean.class);
    }

    @HippoEssentialsGenerated(internalName = "atLaw:large")
    public HippoGalleryImageBean getLarge() {
        return getBean("atLaw:large", HippoGalleryImageBean.class);
    }

    @HippoEssentialsGenerated(internalName = "atLaw:smallsquare")
    public HippoGalleryImageBean getSmallsquare() {
        return getBean("atLaw:smallsquare", HippoGalleryImageBean.class);
    }

    @HippoEssentialsGenerated(internalName = "atLaw:mediumsquare")
    public HippoGalleryImageBean getMediumsquare() {
        return getBean("atLaw:mediumsquare", HippoGalleryImageBean.class);
    }

    @HippoEssentialsGenerated(internalName = "atLaw:largesquare")
    public HippoGalleryImageBean getLargesquare() {
        return getBean("atLaw:largesquare", HippoGalleryImageBean.class);
    }

    @HippoEssentialsGenerated(internalName = "atLaw:banner")
    public HippoGalleryImageBean getBanner() {
        return getBean("atLaw:banner", HippoGalleryImageBean.class);
    }
}
