package com.miui.calendar.util;

import androidx.annotation.Keep;
import kotlin.Metadata;

@Metadata(d1={""}, d2={"Lcom/miui/calendar/util/PatchModel;", "Lcom/miui/calendar/util/BaseScheme;", "()V", "data", "Lcom/miui/calendar/util/PatchData;", "getData", "()Lcom/miui/calendar/util/PatchData;", "setData", "(Lcom/miui/calendar/util/PatchData;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
@Keep
public class PatchModel
  extends BaseScheme
{
  private PatchData data;
  
  public final PatchData getData()
  {
    return this.data;
  }
  
  public final void setData(PatchData paramPatchData)
  {
    this.data = paramPatchData;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.PatchModel
 * JD-Core Version:    0.7.0.1
 */