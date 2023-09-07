package s6;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.SectionIndexer;
import b7.o.a;
import com.xiaomi.passport.ui.internal.CountryCodeListItem;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import n5.f;

public class a
  extends BaseAdapter
  implements SectionIndexer
{
  private String[] a;
  private int[] b;
  private ArrayList<Integer> c;
  private Context d;
  private List<o.a> e;
  
  public a(Context paramContext, List<o.a> paramList, String[] paramArrayOfString)
  {
    this.d = paramContext;
    this.e = paramList;
    this.a = paramArrayOfString;
    a();
  }
  
  private void a()
  {
    this.c = new ArrayList(Arrays.asList(new Integer[getCount()]));
    Object localObject = this.a;
    this.b = new int[localObject.length];
    if ((localObject != null) && (localObject.length > 0))
    {
      int i = 0;
      int k;
      for (int j = -1; i < getCount(); j = k)
      {
        localObject = (String)((o.a)getItem(i)).e.first;
        for (k = 0;; k++)
        {
          String[] arrayOfString = this.a;
          if (k >= arrayOfString.length) {
            break;
          }
          if (TextUtils.equals(arrayOfString[k], (CharSequence)localObject)) {
            break label114;
          }
        }
        k = -1;
        label114:
        int m = k;
        if (k == -1) {
          m = 0;
        }
        this.c.set(i, Integer.valueOf(m));
        k = j;
        if (j != m)
        {
          while (j < m)
          {
            localObject = this.b;
            j++;
            localObject[j] = i;
          }
          k = m;
        }
        i++;
      }
    }
  }
  
  public int getCount()
  {
    return this.e.size();
  }
  
  public Object getItem(int paramInt)
  {
    return this.e.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public int getPositionForSection(int paramInt)
  {
    return this.b[paramInt];
  }
  
  public int getSectionForPosition(int paramInt)
  {
    return ((Integer)this.c.get(paramInt)).intValue();
  }
  
  public Object[] getSections()
  {
    return this.a;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {
      paramView = (CountryCodeListItem)View.inflate(this.d, f.s, null);
    } else {
      paramView = (CountryCodeListItem)paramView;
    }
    paramViewGroup = (o.a)getItem(paramInt);
    String[] arrayOfString = this.a;
    if ((arrayOfString != null) && (arrayOfString.length > 0) && (((Boolean)paramViewGroup.e.second).booleanValue())) {
      paramView.a(paramViewGroup, (String)paramViewGroup.e.first, true);
    } else {
      paramView.a(paramViewGroup, null, false);
    }
    return paramView;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s6.a
 * JD-Core Version:    0.7.0.1
 */