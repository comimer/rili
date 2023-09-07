package h2;

import android.accounts.Account;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Handler;
import android.os.Message;
import android.provider.ContactsContract;
import android.provider.ContactsContract.CommonDataKinds.Email;
import android.text.TextUtils;
import android.text.util.Rfc822Token;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filter.FilterResults;
import android.widget.Filterable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class a
  extends i2.a
  implements Filterable
{
  protected final ContentResolver g;
  private boolean h;
  private Account i;
  private int j;
  private Handler k;
  
  public a(Context paramContext)
  {
    this(paramContext, 10);
  }
  
  public a(Context paramContext, int paramInt)
  {
    super(paramContext);
    this.g = paramContext.getContentResolver();
    this.j = paramInt;
    this.k = new a();
  }
  
  private Cursor A()
  {
    MatrixCursor localMatrixCursor = new MatrixCursor(new String[] { "searching" });
    localMatrixCursor.addRow(new Object[] { "" });
    return localMatrixCursor;
  }
  
  private boolean B(Cursor paramCursor, int paramInt)
  {
    paramCursor.moveToPosition(-1);
    while (paramCursor.moveToNext()) {
      if (E(paramCursor.getString(1), paramInt)) {
        return true;
      }
    }
    return false;
  }
  
  private boolean E(String paramString, int paramInt)
  {
    int m = m();
    for (int n = 0; n < m; n++) {
      if ((n != paramInt) && (!F(n)))
      {
        Cursor localCursor = h(n);
        if (localCursor != null)
        {
          localCursor.moveToPosition(-1);
          while (localCursor.moveToNext()) {
            if (TextUtils.equals(paramString, localCursor.getString(1))) {
              return true;
            }
          }
        }
      }
    }
    return false;
  }
  
  private boolean F(int paramInt)
  {
    return ((d)l(paramInt)).k;
  }
  
  private final String G(Cursor paramCursor)
  {
    if (paramCursor.getColumnName(0).equals("searching")) {
      return "";
    }
    String str1 = paramCursor.getString(0);
    String str2 = paramCursor.getString(1);
    paramCursor = str2;
    if (!TextUtils.isEmpty(str1)) {
      if (TextUtils.equals(str1, str2)) {
        paramCursor = str2;
      } else {
        paramCursor = new Rfc822Token(str1, str2, null).toString();
      }
    }
    return paramCursor;
  }
  
  private Cursor J(int paramInt, Cursor paramCursor)
  {
    if (paramCursor == null) {
      return null;
    }
    if ((paramCursor.getCount() <= 10) && (!B(paramCursor, paramInt))) {
      return paramCursor;
    }
    MatrixCursor localMatrixCursor = new MatrixCursor(f.a);
    paramCursor.moveToPosition(-1);
    int m = 0;
    while ((paramCursor.moveToNext()) && (m < 10))
    {
      String str1 = paramCursor.getString(0);
      String str2 = paramCursor.getString(1);
      if (!E(str2, paramInt))
      {
        localMatrixCursor.addRow(new Object[] { str1, str2 });
        m++;
      }
    }
    paramCursor.close();
    return localMatrixCursor;
  }
  
  protected abstract View C(ViewGroup paramViewGroup);
  
  protected abstract View D(ViewGroup paramViewGroup);
  
  protected void H(CharSequence paramCharSequence, Cursor paramCursor1, Cursor paramCursor2)
  {
    if (paramCursor1 != null)
    {
      PackageManager localPackageManager = g().getPackageManager();
      ArrayList localArrayList = new ArrayList();
      Object localObject1 = null;
      while (paramCursor1.moveToNext())
      {
        long l = paramCursor1.getLong(0);
        if (l != 1L)
        {
          d locald = new d();
          locald.f = l;
          locald.h = paramCursor1.getString(3);
          locald.i = paramCursor1.getString(1);
          locald.j = paramCursor1.getString(2);
          Object localObject2 = paramCursor1.getString(4);
          m = paramCursor1.getInt(5);
          if ((localObject2 != null) && (m != 0)) {
            try
            {
              localObject3 = localPackageManager.getResourcesForApplication((String)localObject2).getString(m);
              locald.g = ((String)localObject3);
              if (localObject3 == null)
              {
                localObject3 = new java/lang/StringBuilder;
                ((StringBuilder)localObject3).<init>();
                ((StringBuilder)localObject3).append("Cannot resolve directory name: ");
                ((StringBuilder)localObject3).append(m);
                ((StringBuilder)localObject3).append("@");
                ((StringBuilder)localObject3).append((String)localObject2);
                Log.e("BaseEmailAddressAdapter", ((StringBuilder)localObject3).toString());
              }
            }
            catch (PackageManager.NameNotFoundException localNameNotFoundException)
            {
              Object localObject3 = new StringBuilder();
              ((StringBuilder)localObject3).append("Cannot resolve directory name: ");
              ((StringBuilder)localObject3).append(m);
              ((StringBuilder)localObject3).append("@");
              ((StringBuilder)localObject3).append((String)localObject2);
              Log.e("BaseEmailAddressAdapter", ((StringBuilder)localObject3).toString(), localNameNotFoundException);
            }
          }
          localObject2 = this.i;
          if ((localObject2 != null) && (((Account)localObject2).name.equals(locald.i)) && (this.i.type.equals(locald.j))) {
            localObject1 = locald;
          } else {
            localArrayList.add(locald);
          }
        }
      }
      if (localObject1 != null) {
        localArrayList.add(1, localObject1);
      }
      paramCursor1 = localArrayList.iterator();
      while (paramCursor1.hasNext()) {
        a((d)paramCursor1.next());
      }
    }
    int n = m();
    s(false);
    if (paramCursor2 != null) {
      try
      {
        if (m() > 0) {
          d(0, paramCursor2);
        }
      }
      finally
      {
        break label648;
      }
    }
    if (paramCursor2 == null) {
      m = 0;
    } else {
      m = paramCursor2.getCount();
    }
    int i1 = this.j - m;
    for (int m = 1; m < n; m++)
    {
      paramCursor1 = (d)l(m);
      paramCursor1.l = paramCharSequence;
      if (i1 > 0)
      {
        if (!paramCursor1.k)
        {
          paramCursor1.k = true;
          d(m, null);
        }
      }
      else
      {
        paramCursor1.k = false;
        d(m, null);
      }
    }
    s(true);
    for (m = 1; m < n; m++)
    {
      paramCursor1 = (d)l(m);
      if (paramCursor1.k)
      {
        this.k.removeMessages(1, paramCursor1);
        paramCursor2 = this.k.obtainMessage(1, m, 0, paramCursor1);
        this.k.sendMessageDelayed(paramCursor2, 1000L);
        if (paramCursor1.m == null) {
          paramCursor1.m = new e(m, paramCursor1.f);
        }
        paramCursor1.m.b(i1);
        paramCursor1.m.filter(paramCharSequence);
      }
      else
      {
        paramCursor1 = paramCursor1.m;
        if (paramCursor1 != null) {
          paramCursor1.filter(null);
        }
      }
    }
    return;
    label648:
    s(true);
    throw paramCharSequence;
  }
  
  public void I(CharSequence paramCharSequence, int paramInt, Cursor paramCursor)
  {
    if (paramInt < m())
    {
      d locald = (d)l(paramInt);
      if ((locald.k) && (TextUtils.equals(paramCharSequence, locald.l)))
      {
        locald.k = false;
        this.k.removeMessages(1, locald);
        d(paramInt, J(paramInt, paramCursor));
      }
      else if (paramCursor != null)
      {
        paramCursor.close();
      }
    }
    else if (paramCursor != null)
    {
      paramCursor.close();
    }
  }
  
  void K(int paramInt)
  {
    if ((paramInt < m()) && (((d)l(paramInt)).k)) {
      d(paramInt, A());
    }
  }
  
  public boolean areAllItemsEnabled()
  {
    return false;
  }
  
  protected void c(View paramView, int paramInt1, Cursor paramCursor, int paramInt2)
  {
    Object localObject = (d)l(paramInt1);
    String str1 = ((d)localObject).g;
    String str2 = ((d)localObject).h;
    if (((d)localObject).k)
    {
      z(paramView, str1, str2);
    }
    else
    {
      String str3 = paramCursor.getString(0);
      paramCursor = paramCursor.getString(1);
      if ((!TextUtils.isEmpty(str3)) && (!TextUtils.equals(str3, paramCursor)))
      {
        localObject = paramCursor;
        paramCursor = str3;
      }
      else
      {
        localObject = null;
      }
      y(paramView, str1, str2, paramCursor, (String)localObject);
    }
  }
  
  public Filter getFilter()
  {
    return new b(null);
  }
  
  protected int j(int paramInt1, int paramInt2)
  {
    return ((d)l(paramInt1)).k;
  }
  
  protected boolean p(int paramInt1, int paramInt2)
  {
    return F(paramInt1) ^ true;
  }
  
  protected View r(Context paramContext, int paramInt1, Cursor paramCursor, int paramInt2, ViewGroup paramViewGroup)
  {
    if (((d)l(paramInt1)).k) {
      return D(paramViewGroup);
    }
    return C(paramViewGroup);
  }
  
  protected abstract void y(View paramView, String paramString1, String paramString2, String paramString3, String paramString4);
  
  protected abstract void z(View paramView, String paramString1, String paramString2);
  
  class a
    extends Handler
  {
    a() {}
    
    public void handleMessage(Message paramMessage)
    {
      a.this.K(paramMessage.arg1);
    }
  }
  
  private final class b
    extends Filter
  {
    private b() {}
    
    public CharSequence convertResultToString(Object paramObject)
    {
      return a.x(a.this, (Cursor)paramObject);
    }
    
    protected Filter.FilterResults performFiltering(CharSequence paramCharSequence)
    {
      boolean bool = a.t(a.this);
      Cursor localCursor1 = null;
      Cursor localCursor2;
      if (!bool)
      {
        localCursor2 = a.this.g.query(a.c.a, a.c.b, null, null, null);
        a.u(a.this, true);
      }
      else
      {
        localCursor2 = null;
      }
      Filter.FilterResults localFilterResults = new Filter.FilterResults();
      if (!TextUtils.isEmpty(paramCharSequence))
      {
        paramCharSequence = ContactsContract.CommonDataKinds.Email.CONTENT_FILTER_URI.buildUpon().appendPath(paramCharSequence.toString()).appendQueryParameter("limit", String.valueOf(a.v(a.this)));
        if (a.w(a.this) != null)
        {
          paramCharSequence.appendQueryParameter("name_for_primary_account", a.w(a.this).name);
          paramCharSequence.appendQueryParameter("type_for_primary_account", a.w(a.this).type);
        }
        paramCharSequence = paramCharSequence.build();
        localCursor1 = a.this.g.query(paramCharSequence, a.f.a, null, null, null);
        localFilterResults.count = localCursor1.getCount();
      }
      localFilterResults.values = new Cursor[] { localCursor2, localCursor1 };
      return localFilterResults;
    }
    
    protected void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
    {
      Object localObject = paramFilterResults.values;
      if (localObject != null)
      {
        localObject = (Cursor[])localObject;
        a.this.H(paramCharSequence, localObject[0], localObject[1]);
      }
      paramFilterResults.count = a.this.getCount();
    }
  }
  
  private static class c
  {
    public static final Uri a = Uri.withAppendedPath(ContactsContract.AUTHORITY_URI, "directories");
    public static final String[] b = { "_id", "accountName", "accountType", "displayName", "packageName", "typeResourceId" };
  }
  
  public static final class d
    extends i2.a.a
  {
    public long f;
    public String g;
    public String h;
    public String i;
    public String j;
    public boolean k;
    public CharSequence l;
    public a.e m;
    
    public d()
    {
      super(false);
    }
  }
  
  private final class e
    extends Filter
  {
    private final int a;
    private final long b;
    private int c;
    
    public e(int paramInt, long paramLong)
    {
      this.a = paramInt;
      this.b = paramLong;
    }
    
    public int a()
    {
      try
      {
        int i = this.c;
        return i;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
    
    public void b(int paramInt)
    {
      try
      {
        this.c = paramInt;
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
    
    protected Filter.FilterResults performFiltering(CharSequence paramCharSequence)
    {
      Filter.FilterResults localFilterResults = new Filter.FilterResults();
      if (!TextUtils.isEmpty(paramCharSequence))
      {
        paramCharSequence = ContactsContract.CommonDataKinds.Email.CONTENT_FILTER_URI.buildUpon().appendPath(paramCharSequence.toString()).appendQueryParameter("directory", String.valueOf(this.b)).appendQueryParameter("limit", String.valueOf(a() + 5)).build();
        localFilterResults.values = a.this.g.query(paramCharSequence, a.f.a, null, null, null);
      }
      return localFilterResults;
    }
    
    protected void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
    {
      Cursor localCursor = (Cursor)paramFilterResults.values;
      a.this.I(paramCharSequence, this.a, localCursor);
      paramFilterResults.count = a.this.getCount();
    }
  }
  
  private static class f
  {
    public static final String[] a = { "display_name", "data1" };
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     h2.a
 * JD-Core Version:    0.7.0.1
 */