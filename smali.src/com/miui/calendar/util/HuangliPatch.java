package com.miui.calendar.util;

import androidx.annotation.Keep;
import java.util.List;
import kotlin.Metadata;

@Metadata(d1={""}, d2={"Lcom/miui/calendar/util/HuangliPatch;", "", "()V", "huangli", "", "Lcom/miui/calendar/util/HuangliPatchItem;", "getHuangli", "()Ljava/util/List;", "setHuangli", "(Ljava/util/List;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
@Keep
public final class HuangliPatch
{
  private List<HuangliPatchItem> huangli;
  
  public final List<HuangliPatchItem> getHuangli()
  {
    return this.huangli;
  }
  
  public final void setHuangli(List<HuangliPatchItem> paramList)
  {
    this.huangli = paramList;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.HuangliPatch
 * JD-Core Version:    0.7.0.1
 */