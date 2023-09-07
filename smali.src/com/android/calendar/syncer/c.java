package com.android.calendar.syncer;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.util.Log;
import b8.g;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;
import kotlin.Metadata;
import kotlin.collections.j;
import kotlin.collections.t;
import kotlin.jvm.internal.r;
import kotlin.random.Random;
import kotlin.text.k;
import org.xbill.DNS.ExtendedResolver;
import org.xbill.DNS.Lookup;
import org.xbill.DNS.Record;
import org.xbill.DNS.Resolver;
import org.xbill.DNS.SRVRecord;
import org.xbill.DNS.SimpleResolver;
import org.xbill.DNS.TXTRecord;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/c;", "", "Landroid/content/Context;", "context", "Lorg/xbill/DNS/Lookup;", "lookup", "Lkotlin/u;", "b", "", "Lorg/xbill/DNS/Record;", "records", "Lorg/xbill/DNS/SRVRecord;", "c", "([Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/SRVRecord;", "", "", "a", "([Lorg/xbill/DNS/Record;)Ljava/util/List;", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
public final class c
{
  public static final c a = new c();
  
  public final List<String> a(Record[] paramArrayOfRecord)
  {
    LinkedList localLinkedList = new LinkedList();
    if (paramArrayOfRecord != null)
    {
      paramArrayOfRecord = j.m(paramArrayOfRecord, TXTRecord.class);
      if (paramArrayOfRecord != null)
      {
        paramArrayOfRecord = paramArrayOfRecord.iterator();
        for (;;)
        {
          if (!paramArrayOfRecord.hasNext()) {
            return localLinkedList;
          }
          Object localObject = ((TXTRecord)paramArrayOfRecord.next()).getStrings();
          r.d(localObject, "null cannot be cast to non-null type kotlin.collections.List<kotlin.String>");
          Iterator localIterator = ((List)localObject).iterator();
          if (localIterator.hasNext())
          {
            localObject = (String)localIterator.next();
            if (!k.C((String)localObject, "path=", false, 2, null)) {
              break;
            }
            localObject = ((String)localObject).substring(5);
            r.e(localObject, "this as java.lang.String).substring(startIndex)");
            localLinkedList.add(localObject);
          }
        }
      }
    }
    return localLinkedList;
  }
  
  public final void b(Context paramContext, Lookup paramLookup)
  {
    r.f(paramContext, "context");
    r.f(paramLookup, "lookup");
    paramContext = androidx.core.content.a.h(paramContext, ConnectivityManager.class);
    r.c(paramContext);
    paramContext = (ConnectivityManager)paramContext;
    paramContext = paramContext.getLinkProperties(paramContext.getActiveNetwork());
    if (paramContext != null)
    {
      Object localObject1 = paramContext.getDnsServers();
      r.e(localObject1, "activeLink.dnsServers");
      paramContext = new ArrayList(t.u((Iterable)localObject1, 10));
      localObject1 = ((Iterable)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        InetAddress localInetAddress = (InetAddress)((Iterator)localObject1).next();
        Object localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("Using DNS server ");
        ((StringBuilder)localObject2).append(localInetAddress.getHostAddress());
        Log.i("CalSync:D:DavUtils", ((StringBuilder)localObject2).toString());
        localObject2 = new SimpleResolver();
        ((SimpleResolver)localObject2).setAddress(localInetAddress);
        paramContext.add(localObject2);
      }
      paramContext = paramContext.toArray(new SimpleResolver[0]);
      r.d(paramContext, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
      paramLookup.setResolver(new ExtendedResolver((Resolver[])paramContext));
    }
    else
    {
      Log.w("CalSync:D:DavUtils", "Couldn't determine DNS servers, dnsjava queries (SRV/TXT records) won't work");
    }
  }
  
  public final SRVRecord c(Record[] paramArrayOfRecord)
  {
    if (paramArrayOfRecord == null) {
      return null;
    }
    Object localObject1 = j.m(paramArrayOfRecord, SRVRecord.class);
    if (((List)localObject1).size() <= 1) {
      return (SRVRecord)t.a0((List)localObject1);
    }
    paramArrayOfRecord = new ArrayList(t.u((Iterable)localObject1, 10));
    Object localObject2 = ((Iterable)localObject1).iterator();
    while (((Iterator)localObject2).hasNext()) {
      paramArrayOfRecord.add(Integer.valueOf(((SRVRecord)((Iterator)localObject2).next()).getPriority()));
    }
    localObject2 = (Integer)t.n0(paramArrayOfRecord);
    paramArrayOfRecord = new ArrayList();
    localObject1 = ((Iterable)localObject1).iterator();
    for (;;)
    {
      boolean bool = ((Iterator)localObject1).hasNext();
      i = 0;
      if (!bool) {
        break;
      }
      Object localObject3 = ((Iterator)localObject1).next();
      int j = ((SRVRecord)localObject3).getPriority();
      if ((localObject2 != null) && (j == ((Integer)localObject2).intValue())) {
        i = 1;
      }
      if (i != 0) {
        paramArrayOfRecord.add(localObject3);
      }
    }
    localObject2 = t.y0(paramArrayOfRecord, new a());
    paramArrayOfRecord = new TreeMap();
    localObject1 = ((List)localObject2).iterator();
    int i = 0;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (SRVRecord)((Iterator)localObject1).next();
      i += ((SRVRecord)localObject2).getWeight();
      paramArrayOfRecord.put(Integer.valueOf(i), localObject2);
    }
    paramArrayOfRecord = paramArrayOfRecord.ceilingEntry(Integer.valueOf(g.j(new b8.c(0, i), Random.Default)));
    r.c(paramArrayOfRecord);
    return (SRVRecord)paramArrayOfRecord.getValue();
  }
  
  @Metadata(bv={}, d1={""}, d2={"T", "kotlin.jvm.PlatformType", "a", "b", "", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "<anonymous>"}, k=3, mv={1, 7, 1})
  public static final class a<T>
    implements Comparator
  {
    public final int compare(T paramT1, T paramT2)
    {
      int i = ((SRVRecord)paramT1).getWeight();
      boolean bool1 = true;
      boolean bool2;
      if (i != 0) {
        bool2 = true;
      } else {
        bool2 = false;
      }
      if (((SRVRecord)paramT2).getWeight() == 0) {
        bool1 = false;
      }
      return q7.a.a(Boolean.valueOf(bool2), Boolean.valueOf(bool1));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.c
 * JD-Core Version:    0.7.0.1
 */