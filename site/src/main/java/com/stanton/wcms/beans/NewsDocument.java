package com.stanton.wcms.beans;

import java.util.Calendar;
import org.hippoecm.hst.content.beans.Node;
import org.hippoecm.hst.content.beans.standard.HippoDocument;
import org.hippoecm.hst.content.beans.standard.HippoGalleryImageSet;
import org.hippoecm.hst.content.beans.standard.HippoHtml;
import org.onehippo.cms7.essentials.dashboard.annotations.HippoEssentialsGenerated;
import com.stanton.wcms.beans.Imageset;

@HippoEssentialsGenerated(internalName = "atLaw:newsdocument")
@Node(jcrType = "atLaw:newsdocument")
public class NewsDocument extends HippoDocument {
    /** 
     * The document type of the news document.
     */
    public final static String DOCUMENT_TYPE = "atLaw:newsdocument";
    private final static String TITLE = "atLaw:title";
    private final static String DATE = "atLaw:date";
    private final static String INTRODUCTION = "atLaw:introduction";
    private final static String IMAGE = "atLaw:image";
    private final static String CONTENT = "atLaw:content";
    private final static String LOCATION = "atLaw:location";
    private final static String AUTHOR = "atLaw:author";
    private final static String SOURCE = "atLaw:source";

    /** 
     * Get the title of the document.
     * @return the title
     */
    @HippoEssentialsGenerated(internalName = "atLaw:title")
    public String getTitle() {
        return getProperty(TITLE);
    }

    /** 
     * Get the date of the document.
     * @return the date
     */
    @HippoEssentialsGenerated(internalName = "atLaw:date")
    public Calendar getDate() {
        return getProperty(DATE);
    }

    /** 
     * Get the introduction of the document.
     * @return the introduction
     */
    @HippoEssentialsGenerated(internalName = "atLaw:introduction")
    public String getIntroduction() {
        return getProperty(INTRODUCTION);
    }

    /** 
     * Get the main content of the document.
     * @return the content
     */
    @HippoEssentialsGenerated(internalName = "atLaw:content")
    public HippoHtml getContent() {
        return getHippoHtml(CONTENT);
    }

    /** 
     * Get the location of the document.
     * @return the location
     */
    @HippoEssentialsGenerated(internalName = "atLaw:location")
    public String getLocation() {
        return getProperty(LOCATION);
    }

    /** 
     * Get the author of the document.
     * @return the author
     */
    @HippoEssentialsGenerated(internalName = "atLaw:author")
    public String getAuthor() {
        return getProperty(AUTHOR);
    }

    /** 
     * Get the source of the document.
     * @return the source
     */
    @HippoEssentialsGenerated(internalName = "atLaw:source")
    public String getSource() {
        return getProperty(SOURCE);
    }

    @HippoEssentialsGenerated(internalName = "atLaw:image")
    public Imageset getImage() {
        return getLinkedBean("atLaw:image", Imageset.class);
    }
}
