package com.miui.calendar.web;

import androidx.annotation.Keep;
import java.io.Serializable;

@Keep
public class PageData
{
  public static final String PARAM_DATE = "date";
  public static final String PARAM_EVENT_NAME = "event_name";
  public static final String PARAM_FROM = "from";
  public static final String PARAM_HOLIDAY = "holiday";
  public static final String PARAM_HOLIDAY_ID = "holidayId";
  public static final String PARAM_OAID = "oaid";
  public static final String PARAM_RAND = "rand";
  public static final String PARAM_RETURN_CALENDAR = "return_calendar";
  public static final String PARAM_SHARE = "share";
  public static final String PARAM_SHARE_IMAGE_URL = "share_image_url";
  public static final String PARAM_SHOW_SHARE = "showShare";
  public static final String PARAM_STYLE = "style";
  public static final String PARAM_TITLE = "title";
  public static final String PARAM_URL = "url";
  public ShareData share;
  public StyleData style;
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("PageData{");
    localStringBuilder.append("share=");
    localStringBuilder.append(this.share);
    localStringBuilder.append(", style=");
    localStringBuilder.append(this.style);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public static class ExtraData
    implements Serializable
  {
    public String shareImage;
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder("ExtraData{");
      localStringBuilder.append("shareImage=");
      localStringBuilder.append(this.shareImage);
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
  }
  
  @Keep
  public static class ShareData
  {
    public PageData.WeiboShareData weibo;
    public PageData.WechatSharaData weixin;
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder("ShareData{");
      localStringBuilder.append("weixin=");
      localStringBuilder.append(this.weixin);
      localStringBuilder.append(", weibo=");
      localStringBuilder.append(this.weibo);
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
  }
  
  public static class StyleData
    implements Serializable
  {
    public String actionBarBg;
    public String backgroundColor;
    public boolean darkMode;
    public boolean hideActionBar;
    public boolean immersion;
    public int immersionAlphaEnd;
    public int immersionAlphaStart;
    public String windowBackgroundColor;
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder("StyleData{");
      localStringBuilder.append("backgroundColor='");
      localStringBuilder.append(this.backgroundColor);
      localStringBuilder.append('\'');
      localStringBuilder.append(", actionBarBg='");
      localStringBuilder.append(this.actionBarBg);
      localStringBuilder.append('\'');
      localStringBuilder.append(", windowBackgroundColor='");
      localStringBuilder.append(this.windowBackgroundColor);
      localStringBuilder.append('\'');
      localStringBuilder.append(", hideActionBar=");
      localStringBuilder.append(this.hideActionBar);
      localStringBuilder.append(", darkMode=");
      localStringBuilder.append(this.darkMode);
      localStringBuilder.append(", immersion=");
      localStringBuilder.append(this.immersion);
      localStringBuilder.append(", immersionAlphaStart=");
      localStringBuilder.append(this.immersionAlphaStart);
      localStringBuilder.append(", immersionAlphaEnd=");
      localStringBuilder.append(this.immersionAlphaEnd);
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
  }
  
  @Keep
  public static class WechatSharaData
  {
    public String icon;
    public String subTitle;
    public String title;
    public String url;
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder("WechatSharaData{");
      localStringBuilder.append("icon='");
      localStringBuilder.append(this.icon);
      localStringBuilder.append('\'');
      localStringBuilder.append(", title='");
      localStringBuilder.append(this.title);
      localStringBuilder.append('\'');
      localStringBuilder.append(", subTitle='");
      localStringBuilder.append(this.subTitle);
      localStringBuilder.append('\'');
      localStringBuilder.append(", url='");
      localStringBuilder.append(this.url);
      localStringBuilder.append('\'');
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
  }
  
  @Keep
  public static class WeiboShareData
  {
    public String content;
    public String icon;
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder("WeiboShareData{");
      localStringBuilder.append("icon='");
      localStringBuilder.append(this.icon);
      localStringBuilder.append('\'');
      localStringBuilder.append(", content='");
      localStringBuilder.append(this.content);
      localStringBuilder.append('\'');
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.web.PageData
 * JD-Core Version:    0.7.0.1
 */