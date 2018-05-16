package com.stanton.wcms.beans;

import org.onehippo.cms7.essentials.dashboard.annotations.HippoEssentialsGenerated;
import org.hippoecm.hst.content.beans.Node;
import java.util.Calendar;
import com.stanton.wcms.beans.Account;
import org.hippoecm.hst.content.beans.standard.HippoGalleryImageSet;

@HippoEssentialsGenerated(internalName = "atLaw:Barrister")
@Node(jcrType = "atLaw:Barrister")
public class Barrister extends BaseDocument {
    @HippoEssentialsGenerated(internalName = "atLaw:name")
    public String getName() {
        return getProperty("atLaw:name");
    }

    @HippoEssentialsGenerated(internalName = "atLaw:calldate")
    public Calendar getCalldate() {
        return getProperty("atLaw:calldate");
    }

    @HippoEssentialsGenerated(internalName = "atLaw:intro")
    public String getIntro() {
        return getProperty("atLaw:intro");
    }

    @HippoEssentialsGenerated(internalName = "atLaw:profile")
    public String getProfile() {
        return getProperty("atLaw:profile");
    }

    @HippoEssentialsGenerated(internalName = "atLaw:imagelink")
    public HippoGalleryImageSet getImagelink() {
        return getLinkedBean("atLaw:imagelink", HippoGalleryImageSet.class);
    }
}
