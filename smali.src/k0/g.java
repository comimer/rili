package k0;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import l0.b;

public class g
{
  public final String a;
  public final Map<String, a> b;
  public final Set<b> c;
  public final Set<d> d;
  
  public g(String paramString, Map<String, a> paramMap, Set<b> paramSet, Set<d> paramSet1)
  {
    this.a = paramString;
    this.b = Collections.unmodifiableMap(paramMap);
    this.c = Collections.unmodifiableSet(paramSet);
    if (paramSet1 == null) {
      paramString = null;
    } else {
      paramString = Collections.unmodifiableSet(paramSet1);
    }
    this.d = paramString;
  }
  
  public static g a(b paramb, String paramString)
  {
    return new g(paramString, b(paramb, paramString), d(paramb, paramString), f(paramb, paramString));
  }
  
  private static Map<String, a> b(b paramb, String paramString)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("PRAGMA table_info(`");
    ((StringBuilder)localObject).append(paramString);
    ((StringBuilder)localObject).append("`)");
    paramb = paramb.M(((StringBuilder)localObject).toString());
    HashMap localHashMap = new HashMap();
    try
    {
      if (paramb.getColumnCount() > 0)
      {
        int i = paramb.getColumnIndex("name");
        int j = paramb.getColumnIndex("type");
        int k = paramb.getColumnIndex("notnull");
        int m = paramb.getColumnIndex("pk");
        int n = paramb.getColumnIndex("dflt_value");
        while (paramb.moveToNext())
        {
          String str1 = paramb.getString(i);
          paramString = paramb.getString(j);
          boolean bool;
          if (paramb.getInt(k) != 0) {
            bool = true;
          } else {
            bool = false;
          }
          int i1 = paramb.getInt(m);
          String str2 = paramb.getString(n);
          localObject = new k0/g$a;
          ((a)localObject).<init>(str1, paramString, bool, i1, str2, 2);
          localHashMap.put(str1, localObject);
        }
      }
      return localHashMap;
    }
    finally
    {
      paramb.close();
    }
  }
  
  private static List<c> c(Cursor paramCursor)
  {
    int i = paramCursor.getColumnIndex("id");
    int j = paramCursor.getColumnIndex("seq");
    int k = paramCursor.getColumnIndex("from");
    int m = paramCursor.getColumnIndex("to");
    int n = paramCursor.getCount();
    ArrayList localArrayList = new ArrayList();
    for (int i1 = 0; i1 < n; i1++)
    {
      paramCursor.moveToPosition(i1);
      localArrayList.add(new c(paramCursor.getInt(i), paramCursor.getInt(j), paramCursor.getString(k), paramCursor.getString(m)));
    }
    Collections.sort(localArrayList);
    return localArrayList;
  }
  
  private static Set<b> d(b paramb, String paramString)
  {
    HashSet localHashSet = new HashSet();
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("PRAGMA foreign_key_list(`");
    ((StringBuilder)localObject1).append(paramString);
    ((StringBuilder)localObject1).append("`)");
    paramb = paramb.M(((StringBuilder)localObject1).toString());
    try
    {
      int i = paramb.getColumnIndex("id");
      int j = paramb.getColumnIndex("seq");
      int k = paramb.getColumnIndex("table");
      int m = paramb.getColumnIndex("on_delete");
      int n = paramb.getColumnIndex("on_update");
      paramString = c(paramb);
      int i1 = paramb.getCount();
      for (int i2 = 0; i2 < i1; i2++)
      {
        paramb.moveToPosition(i2);
        if (paramb.getInt(j) == 0)
        {
          int i3 = paramb.getInt(i);
          ArrayList localArrayList = new java/util/ArrayList;
          localArrayList.<init>();
          localObject1 = new java/util/ArrayList;
          ((ArrayList)localObject1).<init>();
          Iterator localIterator = paramString.iterator();
          while (localIterator.hasNext())
          {
            localObject2 = (c)localIterator.next();
            if (((c)localObject2).a == i3)
            {
              localArrayList.add(((c)localObject2).c);
              ((List)localObject1).add(((c)localObject2).d);
            }
          }
          Object localObject2 = new k0/g$b;
          ((b)localObject2).<init>(paramb.getString(k), paramb.getString(m), paramb.getString(n), localArrayList, (List)localObject1);
          localHashSet.add(localObject2);
        }
      }
      return localHashSet;
    }
    finally
    {
      paramb.close();
    }
  }
  
  private static d e(b paramb, String paramString, boolean paramBoolean)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("PRAGMA index_xinfo(`");
    ((StringBuilder)localObject).append(paramString);
    ((StringBuilder)localObject).append("`)");
    paramb = paramb.M(((StringBuilder)localObject).toString());
    try
    {
      int i = paramb.getColumnIndex("seqno");
      int j = paramb.getColumnIndex("cid");
      int k = paramb.getColumnIndex("name");
      if ((i != -1) && (j != -1) && (k != -1))
      {
        localObject = new java/util/TreeMap;
        ((TreeMap)localObject).<init>();
        while (paramb.moveToNext()) {
          if (paramb.getInt(j) >= 0) {
            ((TreeMap)localObject).put(Integer.valueOf(paramb.getInt(i)), paramb.getString(k));
          }
        }
        ArrayList localArrayList = new java/util/ArrayList;
        localArrayList.<init>(((TreeMap)localObject).size());
        localArrayList.addAll(((TreeMap)localObject).values());
        paramString = new d(paramString, paramBoolean, localArrayList);
        return paramString;
      }
      return null;
    }
    finally
    {
      paramb.close();
    }
  }
  
  private static Set<d> f(b paramb, String paramString)
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("PRAGMA index_list(`");
    ((StringBuilder)localObject1).append(paramString);
    ((StringBuilder)localObject1).append("`)");
    paramString = paramb.M(((StringBuilder)localObject1).toString());
    try
    {
      int i = paramString.getColumnIndex("name");
      int j = paramString.getColumnIndex("origin");
      int k = paramString.getColumnIndex("unique");
      if ((i != -1) && (j != -1) && (k != -1))
      {
        localObject1 = new java/util/HashSet;
        ((HashSet)localObject1).<init>();
        while (paramString.moveToNext()) {
          if ("c".equals(paramString.getString(j)))
          {
            Object localObject2 = paramString.getString(i);
            int m = paramString.getInt(k);
            boolean bool = true;
            if (m != 1) {
              bool = false;
            }
            localObject2 = e(paramb, (String)localObject2, bool);
            if (localObject2 == null) {
              return null;
            }
            ((HashSet)localObject1).add(localObject2);
          }
        }
        return localObject1;
      }
      return null;
    }
    finally
    {
      paramString.close();
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject != null) && (getClass() == paramObject.getClass()))
    {
      paramObject = (g)paramObject;
      Object localObject = this.a;
      if (localObject != null ? !((String)localObject).equals(paramObject.a) : paramObject.a != null) {
        return false;
      }
      localObject = this.b;
      if (localObject != null ? !((Map)localObject).equals(paramObject.b) : paramObject.b != null) {
        return false;
      }
      localObject = this.c;
      if (localObject != null ? !((Set)localObject).equals(paramObject.c) : paramObject.c != null) {
        return false;
      }
      localObject = this.d;
      if (localObject != null)
      {
        paramObject = paramObject.d;
        if (paramObject != null) {
          return ((Set)localObject).equals(paramObject);
        }
      }
      return true;
    }
    return false;
  }
  
  public int hashCode()
  {
    Object localObject = this.a;
    int i = 0;
    int j;
    if (localObject != null) {
      j = ((String)localObject).hashCode();
    } else {
      j = 0;
    }
    localObject = this.b;
    int k;
    if (localObject != null) {
      k = ((Map)localObject).hashCode();
    } else {
      k = 0;
    }
    localObject = this.c;
    if (localObject != null) {
      i = ((Set)localObject).hashCode();
    }
    return (j * 31 + k) * 31 + i;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("TableInfo{name='");
    localStringBuilder.append(this.a);
    localStringBuilder.append('\'');
    localStringBuilder.append(", columns=");
    localStringBuilder.append(this.b);
    localStringBuilder.append(", foreignKeys=");
    localStringBuilder.append(this.c);
    localStringBuilder.append(", indices=");
    localStringBuilder.append(this.d);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public static class a
  {
    public final String a;
    public final String b;
    public final int c;
    public final boolean d;
    public final int e;
    public final String f;
    private final int g;
    
    public a(String paramString1, String paramString2, boolean paramBoolean, int paramInt1, String paramString3, int paramInt2)
    {
      this.a = paramString1;
      this.b = paramString2;
      this.d = paramBoolean;
      this.e = paramInt1;
      this.c = a(paramString2);
      this.f = paramString3;
      this.g = paramInt2;
    }
    
    private static int a(String paramString)
    {
      if (paramString == null) {
        return 5;
      }
      paramString = paramString.toUpperCase(Locale.US);
      if (paramString.contains("INT")) {
        return 3;
      }
      if ((!paramString.contains("CHAR")) && (!paramString.contains("CLOB")) && (!paramString.contains("TEXT")))
      {
        if (paramString.contains("BLOB")) {
          return 5;
        }
        if ((!paramString.contains("REAL")) && (!paramString.contains("FLOA")) && (!paramString.contains("DOUB"))) {
          return 1;
        }
        return 4;
      }
      return 2;
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool = true;
      if (this == paramObject) {
        return true;
      }
      if ((paramObject != null) && (getClass() == paramObject.getClass()))
      {
        paramObject = (a)paramObject;
        if (this.e != paramObject.e) {
          return false;
        }
        if (!this.a.equals(paramObject.a)) {
          return false;
        }
        if (this.d != paramObject.d) {
          return false;
        }
        String str;
        if ((this.g == 1) && (paramObject.g == 2))
        {
          str = this.f;
          if ((str != null) && (!str.equals(paramObject.f))) {
            return false;
          }
        }
        if ((this.g == 2) && (paramObject.g == 1))
        {
          str = paramObject.f;
          if ((str != null) && (!str.equals(this.f))) {
            return false;
          }
        }
        int i = this.g;
        if ((i != 0) && (i == paramObject.g))
        {
          str = this.f;
          if (str != null ? !str.equals(paramObject.f) : paramObject.f != null) {
            return false;
          }
        }
        if (this.c != paramObject.c) {
          bool = false;
        }
        return bool;
      }
      return false;
    }
    
    public int hashCode()
    {
      int i = this.a.hashCode();
      int j = this.c;
      int k;
      if (this.d) {
        k = 1231;
      } else {
        k = 1237;
      }
      return ((i * 31 + j) * 31 + k) * 31 + this.e;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Column{name='");
      localStringBuilder.append(this.a);
      localStringBuilder.append('\'');
      localStringBuilder.append(", type='");
      localStringBuilder.append(this.b);
      localStringBuilder.append('\'');
      localStringBuilder.append(", affinity='");
      localStringBuilder.append(this.c);
      localStringBuilder.append('\'');
      localStringBuilder.append(", notNull=");
      localStringBuilder.append(this.d);
      localStringBuilder.append(", primaryKeyPosition=");
      localStringBuilder.append(this.e);
      localStringBuilder.append(", defaultValue='");
      localStringBuilder.append(this.f);
      localStringBuilder.append('\'');
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
  }
  
  public static class b
  {
    public final String a;
    public final String b;
    public final String c;
    public final List<String> d;
    public final List<String> e;
    
    public b(String paramString1, String paramString2, String paramString3, List<String> paramList1, List<String> paramList2)
    {
      this.a = paramString1;
      this.b = paramString2;
      this.c = paramString3;
      this.d = Collections.unmodifiableList(paramList1);
      this.e = Collections.unmodifiableList(paramList2);
    }
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {
        return true;
      }
      if ((paramObject != null) && (getClass() == paramObject.getClass()))
      {
        paramObject = (b)paramObject;
        if (!this.a.equals(paramObject.a)) {
          return false;
        }
        if (!this.b.equals(paramObject.b)) {
          return false;
        }
        if (!this.c.equals(paramObject.c)) {
          return false;
        }
        if (!this.d.equals(paramObject.d)) {
          return false;
        }
        return this.e.equals(paramObject.e);
      }
      return false;
    }
    
    public int hashCode()
    {
      return (((this.a.hashCode() * 31 + this.b.hashCode()) * 31 + this.c.hashCode()) * 31 + this.d.hashCode()) * 31 + this.e.hashCode();
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("ForeignKey{referenceTable='");
      localStringBuilder.append(this.a);
      localStringBuilder.append('\'');
      localStringBuilder.append(", onDelete='");
      localStringBuilder.append(this.b);
      localStringBuilder.append('\'');
      localStringBuilder.append(", onUpdate='");
      localStringBuilder.append(this.c);
      localStringBuilder.append('\'');
      localStringBuilder.append(", columnNames=");
      localStringBuilder.append(this.d);
      localStringBuilder.append(", referenceColumnNames=");
      localStringBuilder.append(this.e);
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
  }
  
  static class c
    implements Comparable<c>
  {
    final int a;
    final int b;
    final String c;
    final String d;
    
    c(int paramInt1, int paramInt2, String paramString1, String paramString2)
    {
      this.a = paramInt1;
      this.b = paramInt2;
      this.c = paramString1;
      this.d = paramString2;
    }
    
    public int b(c paramc)
    {
      int i = this.a - paramc.a;
      int j = i;
      if (i == 0) {
        j = this.b - paramc.b;
      }
      return j;
    }
  }
  
  public static class d
  {
    public final String a;
    public final boolean b;
    public final List<String> c;
    
    public d(String paramString, boolean paramBoolean, List<String> paramList)
    {
      this.a = paramString;
      this.b = paramBoolean;
      this.c = paramList;
    }
    
    public boolean equals(Object paramObject)
    {
      if (this == paramObject) {
        return true;
      }
      if ((paramObject != null) && (getClass() == paramObject.getClass()))
      {
        paramObject = (d)paramObject;
        if (this.b != paramObject.b) {
          return false;
        }
        if (!this.c.equals(paramObject.c)) {
          return false;
        }
        if (this.a.startsWith("index_")) {
          return paramObject.a.startsWith("index_");
        }
        return this.a.equals(paramObject.a);
      }
      return false;
    }
    
    public int hashCode()
    {
      int i;
      if (this.a.startsWith("index_")) {
        i = -1184239155;
      } else {
        i = this.a.hashCode();
      }
      return (i * 31 + this.b) * 31 + this.c.hashCode();
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Index{name='");
      localStringBuilder.append(this.a);
      localStringBuilder.append('\'');
      localStringBuilder.append(", unique=");
      localStringBuilder.append(this.b);
      localStringBuilder.append(", columns=");
      localStringBuilder.append(this.c);
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     k0.g
 * JD-Core Version:    0.7.0.1
 */