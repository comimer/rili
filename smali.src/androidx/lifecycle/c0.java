package androidx.lifecycle;

import android.os.BaseBundle;
import android.os.Binder;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.core.os.d;
import androidx.savedstate.c.c;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.m0;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlinx.coroutines.flow.g1;

@Metadata(bv={}, d1={""}, d2={"Landroidx/lifecycle/c0;", "", "Landroidx/savedstate/c$c;", "d", "T", "", "key", "value", "Lkotlin/u;", "f", "(Ljava/lang/String;Ljava/lang/Object;)V", "", "a", "Ljava/util/Map;", "regular", "b", "savedStateProviders", "c", "liveDatas", "Lkotlinx/coroutines/flow/g1;", "flows", "e", "Landroidx/savedstate/c$c;", "savedStateProvider", "", "initialState", "<init>", "(Ljava/util/Map;)V", "()V", "lifecycle-viewmodel-savedstate_release"}, k=1, mv={1, 6, 0})
public final class c0
{
  public static final a f = new a(null);
  private static final Class<? extends Object>[] g = { Boolean.TYPE, [Z.class, Double.TYPE, [D.class, Integer.TYPE, [I.class, Long.TYPE, [J.class, String.class, [Ljava.lang.String.class, Binder.class, Bundle.class, Byte.TYPE, [B.class, Character.TYPE, [C.class, CharSequence.class, [Ljava.lang.CharSequence.class, ArrayList.class, Float.TYPE, [F.class, Parcelable.class, [Landroid.os.Parcelable.class, Serializable.class, Short.TYPE, [S.class, SparseArray.class, Size.class, SizeF.class };
  private final Map<String, Object> a;
  private final Map<String, c.c> b;
  private final Map<String, Object> c;
  private final Map<String, g1<Object>> d;
  private final c.c e;
  
  public c0()
  {
    this.a = new LinkedHashMap();
    this.b = new LinkedHashMap();
    this.c = new LinkedHashMap();
    this.d = new LinkedHashMap();
    this.e = new b0(this);
  }
  
  public c0(Map<String, ? extends Object> paramMap)
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    this.a = localLinkedHashMap;
    this.b = new LinkedHashMap();
    this.c = new LinkedHashMap();
    this.d = new LinkedHashMap();
    this.e = new b0(this);
    localLinkedHashMap.putAll(paramMap);
  }
  
  public static final c0 c(Bundle paramBundle1, Bundle paramBundle2)
  {
    return f.a(paramBundle1, paramBundle2);
  }
  
  private static final Bundle e(c0 paramc0)
  {
    r.f(paramc0, "this$0");
    Object localObject1 = m0.s(paramc0.b).entrySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Map.Entry)((Iterator)localObject1).next();
      paramc0.f((String)((Map.Entry)localObject2).getKey(), ((c.c)((Map.Entry)localObject2).getValue()).a());
    }
    Object localObject3 = paramc0.a.keySet();
    Object localObject2 = new ArrayList(((Set)localObject3).size());
    localObject1 = new ArrayList(((ArrayList)localObject2).size());
    Iterator localIterator = ((Set)localObject3).iterator();
    while (localIterator.hasNext())
    {
      localObject3 = (String)localIterator.next();
      ((ArrayList)localObject2).add(localObject3);
      ((ArrayList)localObject1).add(paramc0.a.get(localObject3));
    }
    return d.a(new Pair[] { k.a("keys", localObject2), k.a("values", localObject1) });
  }
  
  public final c.c d()
  {
    return this.e;
  }
  
  public final <T> void f(String paramString, T paramT)
  {
    r.f(paramString, "key");
    if (f.b(paramT))
    {
      Object localObject = this.c.get(paramString);
      if ((localObject instanceof u)) {
        localObject = (u)localObject;
      } else {
        localObject = null;
      }
      if (localObject != null) {
        ((u)localObject).n(paramT);
      } else {
        this.a.put(paramString, paramT);
      }
      paramString = (g1)this.d.get(paramString);
      if (paramString != null) {
        paramString.setValue(paramT);
      }
      return;
    }
    paramString = new StringBuilder();
    paramString.append("Can't put value with type ");
    r.c(paramT);
    paramString.append(paramT.getClass());
    paramString.append(" into saved state");
    throw new IllegalArgumentException(paramString.toString());
  }
  
  @Metadata(bv={}, d1={""}, d2={"Landroidx/lifecycle/c0$a;", "", "Landroid/os/Bundle;", "restoredState", "defaultState", "Landroidx/lifecycle/c0;", "a", "value", "", "b", "", "Ljava/lang/Class;", "ACCEPTABLE_CLASSES", "[Ljava/lang/Class;", "", "KEYS", "Ljava/lang/String;", "VALUES", "<init>", "()V", "lifecycle-viewmodel-savedstate_release"}, k=1, mv={1, 6, 0})
  public static final class a
  {
    public final c0 a(Bundle paramBundle1, Bundle paramBundle2)
    {
      Object localObject1;
      if (paramBundle1 == null)
      {
        if (paramBundle2 == null)
        {
          paramBundle1 = new c0();
        }
        else
        {
          localObject1 = new HashMap();
          localObject2 = paramBundle2.keySet().iterator();
          while (((Iterator)localObject2).hasNext())
          {
            paramBundle1 = (String)((Iterator)localObject2).next();
            r.e(paramBundle1, "key");
            ((Map)localObject1).put(paramBundle1, paramBundle2.get(paramBundle1));
          }
          paramBundle1 = new c0((Map)localObject1);
        }
        return paramBundle1;
      }
      paramBundle2 = paramBundle1.getParcelableArrayList("keys");
      Object localObject2 = paramBundle1.getParcelableArrayList("values");
      int i = 0;
      int j;
      if ((paramBundle2 != null) && (localObject2 != null) && (paramBundle2.size() == ((ArrayList)localObject2).size())) {
        j = 1;
      } else {
        j = 0;
      }
      if (j != 0)
      {
        paramBundle1 = new LinkedHashMap();
        int k = paramBundle2.size();
        j = i;
        while (j < k)
        {
          localObject1 = paramBundle2.get(j);
          if (localObject1 != null)
          {
            paramBundle1.put((String)localObject1, ((ArrayList)localObject2).get(j));
            j++;
          }
          else
          {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
          }
        }
        return new c0(paramBundle1);
      }
      throw new IllegalStateException("Invalid bundle passed as restored state".toString());
    }
    
    public final boolean b(Object paramObject)
    {
      if (paramObject == null) {
        return true;
      }
      for (Class localClass : c0.b())
      {
        r.c(localClass);
        if (localClass.isInstance(paramObject)) {
          return true;
        }
      }
      return false;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.lifecycle.c0
 * JD-Core Version:    0.7.0.1
 */