package i2;

import android.content.Context;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;
import java.util.Iterator;

public abstract class a
  extends BaseAdapter
{
  private final Context a;
  private ArrayList<a> b;
  private int c = 0;
  private boolean d = true;
  private boolean e = true;
  private boolean f;
  
  public a(Context paramContext)
  {
    this(paramContext, 2);
  }
  
  public a(Context paramContext, int paramInt)
  {
    this.a = paramContext;
    this.b = new ArrayList();
  }
  
  public void a(a parama)
  {
    this.b.add(parama);
    o();
    notifyDataSetChanged();
  }
  
  protected void b(View paramView, int paramInt, Cursor paramCursor) {}
  
  protected abstract void c(View paramView, int paramInt1, Cursor paramCursor, int paramInt2);
  
  public void d(int paramInt, Cursor paramCursor)
  {
    Cursor localCursor = ((a)this.b.get(paramInt)).c;
    if (localCursor != paramCursor)
    {
      if ((localCursor != null) && (!localCursor.isClosed())) {
        localCursor.close();
      }
      ((a)this.b.get(paramInt)).c = paramCursor;
      if (paramCursor != null) {
        ((a)this.b.get(paramInt)).d = paramCursor.getColumnIndex("_id");
      }
      o();
      notifyDataSetChanged();
    }
  }
  
  public void e()
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      Cursor localCursor = ((a)localIterator.next()).c;
      if ((localCursor != null) && (!localCursor.isClosed())) {
        localCursor.close();
      }
    }
    this.b.clear();
    o();
    notifyDataSetChanged();
  }
  
  protected void f()
  {
    if (this.d) {
      return;
    }
    this.c = 0;
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      Cursor localCursor = locala.c;
      int i;
      if (localCursor != null) {
        i = localCursor.getCount();
      } else {
        i = 0;
      }
      int j = i;
      if (locala.b) {
        if (i == 0)
        {
          j = i;
          if (!locala.a) {}
        }
        else
        {
          j = i + 1;
        }
      }
      locala.e = j;
      this.c += j;
    }
    this.d = true;
  }
  
  public Context g()
  {
    return this.a;
  }
  
  public int getCount()
  {
    f();
    return this.c;
  }
  
  public Object getItem(int paramInt)
  {
    f();
    Iterator localIterator = this.b.iterator();
    int j;
    for (int i = 0; localIterator.hasNext(); i = j)
    {
      Object localObject = (a)localIterator.next();
      j = ((a)localObject).e + i;
      if ((paramInt >= i) && (paramInt < j))
      {
        i = paramInt - i;
        paramInt = i;
        if (((a)localObject).b) {
          paramInt = i - 1;
        }
        if (paramInt == -1) {
          return null;
        }
        localObject = ((a)localObject).c;
        ((Cursor)localObject).moveToPosition(paramInt);
        return localObject;
      }
    }
    return null;
  }
  
  public long getItemId(int paramInt)
  {
    f();
    Object localObject = this.b.iterator();
    int j;
    for (int i = 0; ((Iterator)localObject).hasNext(); i = j)
    {
      a locala = (a)((Iterator)localObject).next();
      j = locala.e + i;
      if ((paramInt >= i) && (paramInt < j))
      {
        i = paramInt - i;
        paramInt = i;
        if (locala.b) {
          paramInt = i - 1;
        }
        if (paramInt == -1) {
          return 0L;
        }
        if (locala.d == -1) {
          return 0L;
        }
        localObject = locala.c;
        if ((localObject != null) && (!((Cursor)localObject).isClosed()) && (((Cursor)localObject).moveToPosition(paramInt))) {
          return ((Cursor)localObject).getLong(locala.d);
        }
        return 0L;
      }
    }
    return 0L;
  }
  
  public int getItemViewType(int paramInt)
  {
    f();
    int i = this.b.size();
    int j = 0;
    int m;
    for (int k = 0; j < i; k = m)
    {
      m = ((a)this.b.get(j)).e + k;
      if ((paramInt >= k) && (paramInt < m))
      {
        k = paramInt - k;
        paramInt = k;
        if (((a)this.b.get(j)).b) {
          paramInt = k - 1;
        }
        if (paramInt == -1) {
          return -1;
        }
        return j(j, paramInt);
      }
      j++;
    }
    throw new ArrayIndexOutOfBoundsException(paramInt);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    f();
    int i = this.b.size();
    int j = 0;
    int m;
    for (int k = 0; j < i; k = m)
    {
      m = ((a)this.b.get(j)).e + k;
      if ((paramInt >= k) && (paramInt < m))
      {
        k = paramInt - k;
        paramInt = k;
        if (((a)this.b.get(j)).b) {
          paramInt = k - 1;
        }
        if (paramInt == -1)
        {
          paramView = i(j, ((a)this.b.get(j)).c, paramView, paramViewGroup);
        }
        else
        {
          if (!((a)this.b.get(j)).c.moveToPosition(paramInt)) {
            break label224;
          }
          paramView = n(j, ((a)this.b.get(j)).c, paramInt, paramView, paramViewGroup);
        }
        if (paramView != null) {
          return paramView;
        }
        paramView = new StringBuilder();
        paramView.append("View should not be null, partition: ");
        paramView.append(j);
        paramView.append(" position: ");
        paramView.append(paramInt);
        throw new NullPointerException(paramView.toString());
        label224:
        paramView = new StringBuilder();
        paramView.append("Couldn't move cursor to position ");
        paramView.append(paramInt);
        throw new IllegalStateException(paramView.toString());
      }
      j++;
    }
    throw new ArrayIndexOutOfBoundsException(paramInt);
  }
  
  public int getViewTypeCount()
  {
    return k() + 1;
  }
  
  public Cursor h(int paramInt)
  {
    return ((a)this.b.get(paramInt)).c;
  }
  
  protected View i(int paramInt, Cursor paramCursor, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {
      paramView = q(this.a, paramInt, paramCursor, paramViewGroup);
    }
    b(paramView, paramInt, paramCursor);
    return paramView;
  }
  
  public boolean isEnabled(int paramInt)
  {
    f();
    int i = this.b.size();
    int j = 0;
    int m;
    for (int k = j; j < i; k = m)
    {
      m = ((a)this.b.get(j)).e + k;
      if ((paramInt >= k) && (paramInt < m))
      {
        paramInt -= k;
        if ((((a)this.b.get(j)).b) && (paramInt == 0)) {
          return false;
        }
        return p(j, paramInt);
      }
      j++;
    }
    return false;
  }
  
  protected abstract int j(int paramInt1, int paramInt2);
  
  public int k()
  {
    return 1;
  }
  
  public a l(int paramInt)
  {
    return (a)this.b.get(paramInt);
  }
  
  public int m()
  {
    return this.b.size();
  }
  
  protected View n(int paramInt1, Cursor paramCursor, int paramInt2, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {
      paramView = r(this.a, paramInt1, paramCursor, paramInt2, paramViewGroup);
    }
    c(paramView, paramInt1, paramCursor, paramInt2);
    return paramView;
  }
  
  public void notifyDataSetChanged()
  {
    if (this.e)
    {
      this.f = false;
      super.notifyDataSetChanged();
    }
    else
    {
      this.f = true;
    }
  }
  
  protected void o()
  {
    this.d = false;
  }
  
  protected abstract boolean p(int paramInt1, int paramInt2);
  
  protected View q(Context paramContext, int paramInt, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return null;
  }
  
  protected abstract View r(Context paramContext, int paramInt1, Cursor paramCursor, int paramInt2, ViewGroup paramViewGroup);
  
  public void s(boolean paramBoolean)
  {
    this.e = paramBoolean;
    if ((paramBoolean) && (this.f)) {
      notifyDataSetChanged();
    }
  }
  
  public static class a
  {
    boolean a;
    boolean b;
    Cursor c;
    int d;
    int e;
    
    public a(boolean paramBoolean1, boolean paramBoolean2)
    {
      this.a = paramBoolean1;
      this.b = paramBoolean2;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     i2.a
 * JD-Core Version:    0.7.0.1
 */