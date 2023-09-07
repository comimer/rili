package com.android.ex.chips;

import android.accounts.Account;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Handler;
import android.os.Message;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.text.util.Rfc822Token;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filter.FilterResults;
import android.widget.Filterable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class b
  extends BaseAdapter
  implements Filterable, a, g.a
{
  private final h.c a;
  private final int b;
  private final Context c;
  private final ContentResolver d;
  private Account e;
  protected final int f;
  private DropdownChipLayouter g;
  private LinkedHashMap<Long, List<r>> h;
  private List<r> i;
  private Set<String> j;
  private List<r> k;
  private List<r> l;
  private int m;
  protected CharSequence n;
  private g o;
  protected boolean p;
  private c.a q;
  private final d r = new d(null);
  private h v;
  
  public b(Context paramContext)
  {
    this(paramContext, 10, 0);
  }
  
  public b(Context paramContext, int paramInt1, int paramInt2)
  {
    this.c = paramContext;
    paramContext = paramContext.getContentResolver();
    this.d = paramContext;
    this.f = paramInt1;
    this.o = new e(paramContext);
    this.b = paramInt2;
    if (paramInt2 == 0)
    {
      this.a = h.b;
    }
    else if (paramInt2 == 1)
    {
      this.a = h.a;
    }
    else
    {
      this.a = h.b;
      paramContext = new StringBuilder();
      paramContext.append("Unsupported query type: ");
      paramContext.append(paramInt2);
      Log.e("BaseRecipientAdapter", paramContext.toString());
    }
  }
  
  private static void F(i parami, boolean paramBoolean, LinkedHashMap<Long, List<r>> paramLinkedHashMap, List<r> paramList, Set<String> paramSet)
  {
    if (paramSet.contains(parami.b)) {
      return;
    }
    paramSet.add(parami.b);
    if (!paramBoolean)
    {
      paramList.add(r.f(parami.a, parami.i, parami.b, parami.c, parami.d, parami.e, parami.f, parami.g, parami.h, true, parami.j));
    }
    else if (paramLinkedHashMap.containsKey(Long.valueOf(parami.e)))
    {
      ((List)paramLinkedHashMap.get(Long.valueOf(parami.e))).add(r.e(parami.a, parami.i, parami.b, parami.c, parami.d, parami.e, parami.f, parami.g, parami.h, true, parami.j));
    }
    else
    {
      paramList = new ArrayList();
      paramList.add(r.f(parami.a, parami.i, parami.b, parami.c, parami.d, parami.e, parami.f, parami.g, parami.h, true, parami.j));
      paramLinkedHashMap.put(Long.valueOf(parami.e), paramList);
    }
  }
  
  public static List<g> J(Context paramContext, Cursor paramCursor, Account paramAccount)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    ArrayList localArrayList = new ArrayList();
    paramContext = null;
    while (paramCursor.moveToNext())
    {
      long l1 = paramCursor.getLong(0);
      if (l1 != 1L)
      {
        g localg = new g();
        String str = paramCursor.getString(4);
        int i1 = paramCursor.getInt(5);
        localg.a = l1;
        localg.c = paramCursor.getString(3);
        localg.d = paramCursor.getString(1);
        localg.e = paramCursor.getString(2);
        if ((str != null) && (i1 != 0)) {
          try
          {
            localObject = localPackageManager.getResourcesForApplication(str).getString(i1);
            localg.b = ((String)localObject);
            if (localObject == null)
            {
              localObject = new java/lang/StringBuilder;
              ((StringBuilder)localObject).<init>();
              ((StringBuilder)localObject).append("Cannot resolve directory name: ");
              ((StringBuilder)localObject).append(i1);
              ((StringBuilder)localObject).append("@");
              ((StringBuilder)localObject).append(str);
              Log.e("BaseRecipientAdapter", ((StringBuilder)localObject).toString());
            }
          }
          catch (PackageManager.NameNotFoundException localNameNotFoundException)
          {
            Object localObject = new StringBuilder();
            ((StringBuilder)localObject).append("Cannot resolve directory name: ");
            ((StringBuilder)localObject).append(i1);
            ((StringBuilder)localObject).append("@");
            ((StringBuilder)localObject).append(str);
            Log.e("BaseRecipientAdapter", ((StringBuilder)localObject).toString(), localNameNotFoundException);
          }
        }
        if ((paramContext == null) && (paramAccount != null) && (paramAccount.name.equals(localg.d)) && (paramAccount.type.equals(localg.e))) {
          paramContext = localg;
        } else {
          localArrayList.add(localg);
        }
      }
    }
    if (paramContext != null) {
      localArrayList.add(1, paramContext);
    }
    return localArrayList;
  }
  
  private List<r> s(LinkedHashMap<Long, List<r>> paramLinkedHashMap, List<r> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramLinkedHashMap.entrySet().iterator();
    int i1 = 0;
    int i2;
    do
    {
      i2 = i1;
      if (!localIterator.hasNext()) {
        break;
      }
      paramLinkedHashMap = (List)((Map.Entry)localIterator.next()).getValue();
      int i3 = paramLinkedHashMap.size();
      int i4 = 0;
      i2 = i1;
      while (i4 < i3)
      {
        r localr = (r)paramLinkedHashMap.get(i4);
        localArrayList.add(localr);
        this.o.a(localr, this);
        i2++;
        i4++;
      }
      i1 = i2;
    } while (i2 <= this.f);
    if (i2 <= this.f)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        paramLinkedHashMap = (r)paramList.next();
        if (i2 > this.f) {
          break;
        }
        localArrayList.add(paramLinkedHashMap);
        this.o.a(paramLinkedHashMap, this);
        i2++;
      }
    }
    return localArrayList;
  }
  
  private Cursor t(CharSequence paramCharSequence, int paramInt, Long paramLong)
  {
    if (!c.b(this.c, this.q)) {
      return null;
    }
    paramCharSequence = this.a.a().buildUpon().appendPath(paramCharSequence.toString()).appendQueryParameter("limit", String.valueOf(paramInt + 5));
    if (paramLong != null) {
      paramCharSequence.appendQueryParameter("directory", String.valueOf(paramLong));
    }
    paramLong = this.e;
    if (paramLong != null)
    {
      paramCharSequence.appendQueryParameter("name_for_primary_account", paramLong.name);
      paramCharSequence.appendQueryParameter("type_for_primary_account", this.e.type);
    }
    System.currentTimeMillis();
    paramCharSequence = this.d.query(paramCharSequence.build(), this.a.c(), null, null, null);
    System.currentTimeMillis();
    return paramCharSequence;
  }
  
  public Map<String, r> A(Set<String> paramSet)
  {
    return null;
  }
  
  public void B(ArrayList<String> paramArrayList, q.b paramb)
  {
    q.e(x(), this, paramArrayList, w(), paramb, this.q);
  }
  
  public c.a C()
  {
    return this.q;
  }
  
  public int D()
  {
    return this.b;
  }
  
  protected void E(i parami, boolean paramBoolean)
  {
    F(parami, paramBoolean, this.h, this.i, this.j);
  }
  
  public void G(h paramh)
  {
    this.v = paramh;
  }
  
  protected List<g> H(Set<String> paramSet)
  {
    boolean bool = c.b(this.c, this.q);
    Cursor localCursor = null;
    if (!bool) {
      return null;
    }
    if (this.f - paramSet.size() > 0)
    {
      paramSet = localCursor;
      try
      {
        localCursor = this.d.query(f.a, f.b, null, null, null);
        paramSet = localCursor;
        List localList = J(this.c, localCursor, this.e);
        return localList;
      }
      finally
      {
        if (paramSet != null) {
          paramSet.close();
        }
      }
    }
    return null;
  }
  
  public void I(DropdownChipLayouter paramDropdownChipLayouter)
  {
    this.g = paramDropdownChipLayouter;
    paramDropdownChipLayouter.C(this.a);
  }
  
  protected void K(CharSequence paramCharSequence, List<g> paramList, int paramInt)
  {
    int i1 = paramList.size();
    for (int i2 = 1; i2 < i1; i2++)
    {
      g localg = (g)paramList.get(i2);
      localg.f = paramCharSequence;
      if (localg.g == null) {
        localg.g = new e(localg);
      }
      localg.g.b(paramInt);
      localg.g.filter(paramCharSequence);
    }
    this.m = (i1 - 1);
    this.r.b();
  }
  
  protected void L(List<r> paramList)
  {
    this.k = paramList;
    this.v.a(paramList);
    notifyDataSetChanged();
  }
  
  public void a() {}
  
  public void b()
  {
    notifyDataSetChanged();
  }
  
  public void c() {}
  
  public int getCount()
  {
    List localList = y();
    int i1;
    if (localList != null) {
      i1 = localList.size();
    } else {
      i1 = 0;
    }
    return i1;
  }
  
  public Filter getFilter()
  {
    return new b(null);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public int getItemViewType(int paramInt)
  {
    return ((r)y().get(paramInt)).n();
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    r localr = (r)y().get(paramInt);
    Object localObject = this.n;
    if (localObject == null) {
      localObject = null;
    } else {
      localObject = ((CharSequence)localObject).toString();
    }
    return this.g.h(paramView, paramViewGroup, localr, paramInt, DropdownChipLayouter.AdapterType.BASE_RECIPIENT, (String)localObject);
  }
  
  public int getViewTypeCount()
  {
    return 3;
  }
  
  public boolean isEnabled(int paramInt)
  {
    return ((r)y().get(paramInt)).w();
  }
  
  protected void o()
  {
    this.l = this.k;
  }
  
  protected void p(int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 0) && (paramInt2 > 1)) {
      o();
    }
  }
  
  protected void q()
  {
    this.l = null;
  }
  
  protected List<r> r()
  {
    return s(this.h, this.i);
  }
  
  protected void u(r paramr, g.a parama)
  {
    this.o.a(paramr, parama);
  }
  
  public boolean v()
  {
    return false;
  }
  
  public Account w()
  {
    return this.e;
  }
  
  public Context x()
  {
    return this.c;
  }
  
  protected List<r> y()
  {
    List localList = this.l;
    if (localList == null) {
      localList = this.k;
    }
    return localList;
  }
  
  public r z(int paramInt)
  {
    return (r)y().get(paramInt);
  }
  
  private final class b
    extends Filter
  {
    private b() {}
    
    public CharSequence convertResultToString(Object paramObject)
    {
      paramObject = (r)paramObject;
      String str1 = paramObject.m();
      String str2 = paramObject.i();
      paramObject = str2;
      if (!TextUtils.isEmpty(str1)) {
        if (TextUtils.equals(str1, str2)) {
          paramObject = str2;
        } else {
          paramObject = new Rfc822Token(str1, str2, null).toString();
        }
      }
      return paramObject;
    }
    
    /* Error */
    protected Filter.FilterResults performFiltering(CharSequence paramCharSequence)
    {
      // Byte code:
      //   0: new 53	android/widget/Filter$FilterResults
      //   3: dup
      //   4: invokespecial 54	android/widget/Filter$FilterResults:<init>	()V
      //   7: astore_2
      //   8: aload_1
      //   9: invokestatic 37	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
      //   12: ifeq +12 -> 24
      //   15: aload_0
      //   16: getfield 13	com/android/ex/chips/b$b:a	Lcom/android/ex/chips/b;
      //   19: invokevirtual 57	com/android/ex/chips/b:q	()V
      //   22: aload_2
      //   23: areturn
      //   24: aload_0
      //   25: getfield 13	com/android/ex/chips/b$b:a	Lcom/android/ex/chips/b;
      //   28: invokestatic 61	com/android/ex/chips/b:d	(Lcom/android/ex/chips/b;)Landroid/content/Context;
      //   31: aload_0
      //   32: getfield 13	com/android/ex/chips/b$b:a	Lcom/android/ex/chips/b;
      //   35: invokestatic 65	com/android/ex/chips/b:e	(Lcom/android/ex/chips/b;)Lcom/android/ex/chips/c$a;
      //   38: invokestatic 70	com/android/ex/chips/c:b	(Landroid/content/Context;Lcom/android/ex/chips/c$a;)Z
      //   41: ifne +42 -> 83
      //   44: aload_0
      //   45: getfield 13	com/android/ex/chips/b$b:a	Lcom/android/ex/chips/b;
      //   48: invokevirtual 57	com/android/ex/chips/b:q	()V
      //   51: aload_0
      //   52: getfield 13	com/android/ex/chips/b$b:a	Lcom/android/ex/chips/b;
      //   55: getfield 74	com/android/ex/chips/b:p	Z
      //   58: ifne +5 -> 63
      //   61: aload_2
      //   62: areturn
      //   63: aload_2
      //   64: getstatic 77	com/android/ex/chips/c:a	[Ljava/lang/String;
      //   67: invokestatic 80	com/android/ex/chips/r:d	([Ljava/lang/String;)Lcom/android/ex/chips/r;
      //   70: invokestatic 85	com/android/ex/chips/b$c:a	(Lcom/android/ex/chips/r;)Lcom/android/ex/chips/b$c;
      //   73: putfield 89	android/widget/Filter$FilterResults:values	Ljava/lang/Object;
      //   76: aload_2
      //   77: iconst_1
      //   78: putfield 93	android/widget/Filter$FilterResults:count	I
      //   81: aload_2
      //   82: areturn
      //   83: aconst_null
      //   84: astore_3
      //   85: aload_0
      //   86: getfield 13	com/android/ex/chips/b$b:a	Lcom/android/ex/chips/b;
      //   89: astore 4
      //   91: aload 4
      //   93: aload_1
      //   94: aload 4
      //   96: getfield 96	com/android/ex/chips/b:f	I
      //   99: aconst_null
      //   100: invokestatic 100	com/android/ex/chips/b:h	(Lcom/android/ex/chips/b;Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;
      //   103: astore_1
      //   104: aload_1
      //   105: ifnonnull +6 -> 111
      //   108: goto +125 -> 233
      //   111: new 102	java/util/LinkedHashMap
      //   114: astore 5
      //   116: aload 5
      //   118: invokespecial 103	java/util/LinkedHashMap:<init>	()V
      //   121: new 105	java/util/ArrayList
      //   124: astore 4
      //   126: aload 4
      //   128: invokespecial 106	java/util/ArrayList:<init>	()V
      //   131: new 108	java/util/HashSet
      //   134: astore_3
      //   135: aload_3
      //   136: invokespecial 109	java/util/HashSet:<init>	()V
      //   139: aload_1
      //   140: invokeinterface 115 1 0
      //   145: ifeq +29 -> 174
      //   148: new 117	com/android/ex/chips/b$i
      //   151: astore 6
      //   153: aload 6
      //   155: aload_1
      //   156: aconst_null
      //   157: invokespecial 120	com/android/ex/chips/b$i:<init>	(Landroid/database/Cursor;Ljava/lang/Long;)V
      //   160: aload 6
      //   162: iconst_1
      //   163: aload 5
      //   165: aload 4
      //   167: aload_3
      //   168: invokestatic 123	com/android/ex/chips/b:i	(Lcom/android/ex/chips/b$i;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V
      //   171: goto -32 -> 139
      //   174: aload_0
      //   175: getfield 13	com/android/ex/chips/b$b:a	Lcom/android/ex/chips/b;
      //   178: aload 5
      //   180: aload 4
      //   182: invokestatic 127	com/android/ex/chips/b:j	(Lcom/android/ex/chips/b;Ljava/util/LinkedHashMap;Ljava/util/List;)Ljava/util/List;
      //   185: astore 7
      //   187: aload_0
      //   188: getfield 13	com/android/ex/chips/b$b:a	Lcom/android/ex/chips/b;
      //   191: aload_3
      //   192: invokevirtual 131	com/android/ex/chips/b:H	(Ljava/util/Set;)Ljava/util/List;
      //   195: astore 8
      //   197: new 82	com/android/ex/chips/b$c
      //   200: astore 6
      //   202: aload 6
      //   204: aload 7
      //   206: aload 5
      //   208: aload 4
      //   210: aload_3
      //   211: aload 8
      //   213: invokespecial 134	com/android/ex/chips/b$c:<init>	(Ljava/util/List;Ljava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V
      //   216: aload_2
      //   217: aload 6
      //   219: putfield 89	android/widget/Filter$FilterResults:values	Ljava/lang/Object;
      //   222: aload_2
      //   223: aload 7
      //   225: invokeinterface 140 1 0
      //   230: putfield 93	android/widget/Filter$FilterResults:count	I
      //   233: aload_1
      //   234: ifnull +9 -> 243
      //   237: aload_1
      //   238: invokeinterface 143 1 0
      //   243: aload_2
      //   244: areturn
      //   245: astore_2
      //   246: goto +6 -> 252
      //   249: astore_2
      //   250: aload_3
      //   251: astore_1
      //   252: aload_1
      //   253: ifnull +9 -> 262
      //   256: aload_1
      //   257: invokeinterface 143 1 0
      //   262: aload_2
      //   263: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	264	0	this	b
      //   0	264	1	paramCharSequence	CharSequence
      //   7	237	2	localFilterResults	Filter.FilterResults
      //   245	1	2	localObject1	Object
      //   249	14	2	localObject2	Object
      //   84	167	3	localHashSet	java.util.HashSet
      //   89	120	4	localObject3	Object
      //   114	93	5	localLinkedHashMap	LinkedHashMap
      //   151	67	6	localObject4	Object
      //   185	39	7	localList1	List
      //   195	17	8	localList2	List
      // Exception table:
      //   from	to	target	type
      //   111	139	245	finally
      //   139	171	245	finally
      //   174	233	245	finally
      //   85	104	249	finally
    }
    
    protected void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
    {
      Object localObject = b.this;
      ((b)localObject).n = paramCharSequence;
      ((b)localObject).q();
      paramFilterResults = paramFilterResults.values;
      if (paramFilterResults != null)
      {
        b.c localc = (b.c)paramFilterResults;
        b.k(b.this, localc.b);
        b.l(b.this, localc.c);
        b.m(b.this, localc.d);
        paramFilterResults = b.this;
        int i = localc.a.size();
        localObject = localc.e;
        int j;
        if (localObject == null) {
          j = 0;
        } else {
          j = ((List)localObject).size();
        }
        paramFilterResults.p(i, j);
        b.this.L(localc.a);
        if (localc.e != null)
        {
          j = b.this.f;
          i = localc.d.size();
          b.this.K(paramCharSequence, localc.e, j - i);
        }
      }
      else
      {
        b.this.L(Collections.emptyList());
      }
    }
  }
  
  private static class c
  {
    public final List<r> a;
    public final LinkedHashMap<Long, List<r>> b;
    public final List<r> c;
    public final Set<String> d;
    public final List<b.g> e;
    
    public c(List<r> paramList1, LinkedHashMap<Long, List<r>> paramLinkedHashMap, List<r> paramList2, Set<String> paramSet, List<b.g> paramList)
    {
      this.a = paramList1;
      this.b = paramLinkedHashMap;
      this.c = paramList2;
      this.d = paramSet;
      this.e = paramList;
    }
    
    private static c b(r paramr)
    {
      return new c(Collections.singletonList(paramr), new LinkedHashMap(), Collections.singletonList(paramr), Collections.emptySet(), null);
    }
  }
  
  private final class d
    extends Handler
  {
    private d() {}
    
    public void a()
    {
      removeMessages(1);
    }
    
    public void b()
    {
      sendMessageDelayed(obtainMessage(1, 0, 0, null), 1000L);
    }
    
    public void handleMessage(Message paramMessage)
    {
      if (b.f(b.this) > 0)
      {
        paramMessage = b.this;
        paramMessage.L(paramMessage.r());
      }
    }
  }
  
  protected class e
    extends Filter
  {
    private final b.g a;
    private int b;
    
    public e(b.g paramg)
    {
      this.a = paramg;
    }
    
    public int a()
    {
      try
      {
        int i = this.b;
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
        this.b = paramInt;
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
      CharSequence localCharSequence = null;
      localFilterResults.values = null;
      localFilterResults.count = 0;
      if (!TextUtils.isEmpty(paramCharSequence))
      {
        ArrayList localArrayList = new ArrayList();
        try
        {
          paramCharSequence = b.h(b.this, paramCharSequence, a(), Long.valueOf(this.a.a));
          if (paramCharSequence != null) {
            for (;;)
            {
              localCharSequence = paramCharSequence;
              if (!paramCharSequence.moveToNext()) {
                break;
              }
              localCharSequence = paramCharSequence;
              b.i locali = new com/android/ex/chips/b$i;
              localCharSequence = paramCharSequence;
              locali.<init>(paramCharSequence, Long.valueOf(this.a.a));
              localCharSequence = paramCharSequence;
              localArrayList.add(locali);
            }
          }
          if (paramCharSequence != null) {
            paramCharSequence.close();
          }
          if (!localArrayList.isEmpty())
          {
            localFilterResults.values = localArrayList;
            localFilterResults.count = localArrayList.size();
          }
        }
        finally
        {
          if (localCharSequence != null) {
            localCharSequence.close();
          }
        }
      }
      return localFilterResults;
    }
    
    protected void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
    {
      b.n(b.this).a();
      if (TextUtils.equals(paramCharSequence, b.this.n))
      {
        if (paramFilterResults.count > 0)
        {
          Iterator localIterator = ((ArrayList)paramFilterResults.values).iterator();
          while (localIterator.hasNext())
          {
            paramCharSequence = (b.i)localIterator.next();
            b localb = b.this;
            boolean bool;
            if (this.a.a == 0L) {
              bool = true;
            } else {
              bool = false;
            }
            localb.E(paramCharSequence, bool);
          }
        }
        b.g(b.this);
        if (b.f(b.this) > 0) {
          b.n(b.this).b();
        }
        if ((paramFilterResults.count > 0) || (b.f(b.this) == 0)) {
          b.this.q();
        }
      }
      paramCharSequence = b.this;
      paramCharSequence.L(paramCharSequence.r());
    }
  }
  
  protected static class f
  {
    public static final Uri a = Uri.withAppendedPath(ContactsContract.AUTHORITY_URI, "directories");
    public static final String[] b = { "_id", "accountName", "accountType", "displayName", "packageName", "typeResourceId" };
  }
  
  public static final class g
  {
    public long a;
    public String b;
    public String c;
    public String d;
    public String e;
    public CharSequence f;
    public b.e g;
  }
  
  public static abstract interface h
  {
    public abstract void a(List<r> paramList);
  }
  
  protected static class i
  {
    public final String a;
    public final String b;
    public final int c;
    public final String d;
    public final long e;
    public final Long f;
    public final long g;
    public final String h;
    public final int i;
    public final String j;
    
    public i(Cursor paramCursor, Long paramLong)
    {
      this.a = paramCursor.getString(0);
      this.b = paramCursor.getString(1);
      this.c = paramCursor.getInt(2);
      this.d = paramCursor.getString(3);
      this.e = paramCursor.getLong(4);
      this.f = paramLong;
      this.g = paramCursor.getLong(5);
      this.h = paramCursor.getString(6);
      this.i = paramCursor.getInt(7);
      this.j = paramCursor.getString(8);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.ex.chips.b
 * JD-Core Version:    0.7.0.1
 */