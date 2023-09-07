package androidx.core.widget;

import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;

public class i
  extends a
{
  private final ListView v;
  
  public i(ListView paramListView)
  {
    super(paramListView);
    this.v = paramListView;
  }
  
  public boolean a(int paramInt)
  {
    return false;
  }
  
  public boolean b(int paramInt)
  {
    ListView localListView = this.v;
    int i = localListView.getCount();
    if (i == 0) {
      return false;
    }
    int j = localListView.getChildCount();
    int k = localListView.getFirstVisiblePosition();
    if (paramInt > 0)
    {
      if ((k + j >= i) && (localListView.getChildAt(j - 1).getBottom() <= localListView.getHeight())) {
        return false;
      }
    }
    else
    {
      if (paramInt >= 0) {
        break label85;
      }
      if ((k <= 0) && (localListView.getChildAt(0).getTop() >= 0)) {
        return false;
      }
    }
    return true;
    label85:
    return false;
  }
  
  public void j(int paramInt1, int paramInt2)
  {
    j.b(this.v, paramInt2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.widget.i
 * JD-Core Version:    0.7.0.1
 */