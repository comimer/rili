package com.android.calendar.syncer.model;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.i0;
import androidx.lifecycle.u;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/model/TitleColorModel;", "Landroidx/lifecycle/i0;", "", "dirty", "Landroidx/lifecycle/u;", "", "url", "Landroidx/lifecycle/u;", "getUrl", "()Landroidx/lifecycle/u;", "setUrl", "(Landroidx/lifecycle/u;)V", "originalTitle", "Ljava/lang/String;", "getOriginalTitle", "()Ljava/lang/String;", "setOriginalTitle", "(Ljava/lang/String;)V", "title", "getTitle", "", "originalColor", "Ljava/lang/Integer;", "getOriginalColor", "()Ljava/lang/Integer;", "setOriginalColor", "(Ljava/lang/Integer;)V", "color", "getColor", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
public final class TitleColorModel
  extends i0
{
  private final u<Integer> color = new u();
  private Integer originalColor;
  private String originalTitle;
  private final u<String> title = new u();
  private u<String> url = new u();
  
  public final boolean dirty()
  {
    boolean bool;
    if ((r.a(this.originalTitle, this.title.e())) && (r.a(this.originalColor, this.color.e()))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public final u<Integer> getColor()
  {
    return this.color;
  }
  
  public final Integer getOriginalColor()
  {
    return this.originalColor;
  }
  
  public final String getOriginalTitle()
  {
    return this.originalTitle;
  }
  
  public final u<String> getTitle()
  {
    return this.title;
  }
  
  public final u<String> getUrl()
  {
    return this.url;
  }
  
  public final void setOriginalColor(Integer paramInteger)
  {
    this.originalColor = paramInteger;
  }
  
  public final void setOriginalTitle(String paramString)
  {
    this.originalTitle = paramString;
  }
  
  public final void setUrl(u<String> paramu)
  {
    r.f(paramu, "<set-?>");
    this.url = paramu;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.model.TitleColorModel
 * JD-Core Version:    0.7.0.1
 */