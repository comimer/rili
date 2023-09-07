package androidx.databinding;

import android.view.View;
import java.util.Collections;
import java.util.List;

public abstract class e
{
  public List<e> collectDependencies()
  {
    return Collections.emptyList();
  }
  
  public abstract String convertBrIdToString(int paramInt);
  
  public abstract ViewDataBinding getDataBinder(f paramf, View paramView, int paramInt);
  
  public abstract ViewDataBinding getDataBinder(f paramf, View[] paramArrayOfView, int paramInt);
  
  public abstract int getLayoutId(String paramString);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.databinding.e
 * JD-Core Version:    0.7.0.1
 */