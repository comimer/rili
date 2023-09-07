package com.android.calendar.syncer.resource;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import at.bitfire.dav4jvm.DavResource;
import at.bitfire.dav4jvm.Property.Name;
import at.bitfire.dav4jvm.Response;
import at.bitfire.dav4jvm.Response.HrefRelation;
import at.bitfire.dav4jvm.UrlUtils;
import at.bitfire.dav4jvm.exception.DavException;
import at.bitfire.dav4jvm.exception.HttpException;
import at.bitfire.dav4jvm.exception.NotFoundException;
import at.bitfire.dav4jvm.exception.UnauthorizedException;
import at.bitfire.dav4jvm.property.CalendarColor;
import at.bitfire.dav4jvm.property.CalendarDescription;
import at.bitfire.dav4jvm.property.CalendarHomeSet;
import at.bitfire.dav4jvm.property.CalendarTimezone;
import at.bitfire.dav4jvm.property.CalendarUserAddressSet;
import at.bitfire.dav4jvm.property.CurrentUserPrincipal;
import at.bitfire.dav4jvm.property.CurrentUserPrivilegeSet;
import at.bitfire.dav4jvm.property.DisplayName;
import at.bitfire.dav4jvm.property.HrefListProperty;
import at.bitfire.dav4jvm.property.ResourceType;
import at.bitfire.dav4jvm.property.ResourceType.Companion;
import at.bitfire.dav4jvm.property.SupportedCalendarComponentSet;
import com.android.calendar.syncer.c;
import com.android.calendar.syncer.model.Collection.Companion;
import com.android.calendar.syncer.model.LoginModel;
import com.android.calendar.syncer.net.CalDavHttpClient;
import com.android.calendar.syncer.net.CalDavHttpClient.a;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.AbstractCollection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref.BooleanRef;
import kotlin.jvm.internal.Ref.ObjectRef;
import kotlin.jvm.internal.r;
import kotlin.text.k;
import kotlin.u;
import okhttp3.a0;
import okhttp3.t;
import okhttp3.t.a;
import okhttp3.t.b;
import org.apache.commons.lang3.builder.g;
import org.xbill.DNS.Lookup;
import org.xbill.DNS.Name;
import org.xbill.DNS.Record;
import org.xbill.DNS.SRVRecord;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/resource/DavResourceFinder;", "Ljava/lang/AutoCloseable;", "Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;", "service", "Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;", "j", "Lokhttp3/t;", "baseURL", "config", "Lkotlin/u;", "d", "Lat/bitfire/dav4jvm/Response;", "dav", "E", "", "domain", "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", "s", "close", "Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;", "m", "principal", "", "z", "url", "", "x", "q", "Landroid/content/Context;", "a", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context", "Lcom/android/calendar/syncer/model/LoginModel;", "b", "Lcom/android/calendar/syncer/model/LoginModel;", "loginModel", "Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;", "c", "Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;", "getReason", "()Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;", "setReason", "(Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;)V", "reason", "Lcom/android/calendar/syncer/net/CalDavHttpClient;", "Lcom/android/calendar/syncer/net/CalDavHttpClient;", "httpClient", "<init>", "(Landroid/content/Context;Lcom/android/calendar/syncer/model/LoginModel;)V", "Configuration", "Service", "syncer_release"}, k=1, mv={1, 7, 1})
@SuppressLint({"LongLogTag"})
public final class DavResourceFinder
  implements AutoCloseable
{
  public static final a e = new a(null);
  private final Context a;
  private final LoginModel b;
  private DavResourceFinder.Configuration.Reason c;
  private final CalDavHttpClient d;
  
  public DavResourceFinder(Context paramContext, LoginModel paramLoginModel)
  {
    this.a = paramContext;
    this.b = paramLoginModel;
    paramContext = new CalDavHttpClient.a(paramContext, null, 2, null);
    paramLoginModel = paramLoginModel.getCredentials();
    r.c(paramLoginModel);
    this.d = paramContext.a(null, paramLoginModel).d(true).b();
  }
  
  private final void E(Response paramResponse, DavResourceFinder.Configuration.a parama)
  {
    Object localObject1 = (CurrentUserPrincipal)paramResponse.get(CurrentUserPrincipal.class);
    if (localObject1 != null)
    {
      localObject1 = ((CurrentUserPrincipal)localObject1).getHref();
      if (localObject1 != null)
      {
        localObject1 = paramResponse.getRequestedUrl().r((String)localObject1);
        break label37;
      }
    }
    localObject1 = null;
    label37:
    Object localObject2 = (ResourceType)paramResponse.get(ResourceType.class);
    Object localObject3 = localObject1;
    Object localObject4;
    if (localObject2 != null)
    {
      localObject3 = ((ResourceType)localObject2).getTypes();
      localObject4 = ResourceType.Companion;
      if (((Set)localObject3).contains(((ResourceType.Companion)localObject4).getCALENDAR()))
      {
        localObject3 = com.android.calendar.syncer.model.Collection.Companion.fromDavResponse(paramResponse);
        r.c(localObject3);
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Found calendar at ");
        localStringBuilder.append(((com.android.calendar.syncer.model.Collection)localObject3).getUrl());
        Log.i("CalSync:D:DavResourceFinder", localStringBuilder.toString());
        parama.a().put(((com.android.calendar.syncer.model.Collection)localObject3).getUrl(), localObject3);
      }
      localObject3 = localObject1;
      if (((ResourceType)localObject2).getTypes().contains(((ResourceType.Companion)localObject4).getPRINCIPAL())) {
        localObject3 = paramResponse.getHref();
      }
    }
    localObject1 = (CalendarHomeSet)paramResponse.get(CalendarHomeSet.class);
    if (localObject1 != null)
    {
      localObject1 = ((HrefListProperty)localObject1).getHrefs().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (String)((Iterator)localObject1).next();
        localObject4 = paramResponse.getRequestedUrl();
        r.e(localObject2, "href");
        localObject4 = ((t)localObject4).r((String)localObject2);
        if (localObject4 != null)
        {
          localObject4 = UrlUtils.INSTANCE.withTrailingSlash((t)localObject4);
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append("Found calendar book home-set at ");
          ((StringBuilder)localObject2).append(localObject4);
          Log.i("CalSync:D:DavResourceFinder", ((StringBuilder)localObject2).toString());
          parama.c().add(localObject4);
        }
      }
    }
    if ((localObject3 != null) && (x((t)localObject3, Service.CALDAV))) {
      parama.e((t)localObject3);
    }
  }
  
  private final void d(t paramt, Service paramService, DavResourceFinder.Configuration.a parama)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Checking user-given URL: ");
    ((StringBuilder)localObject).append(paramt);
    Log.i("CalSync:D:DavResourceFinder", ((StringBuilder)localObject).toString());
    paramt = new DavResource(this.d.d(), paramt, null, 4, null);
    try
    {
      if (b.a[paramService.ordinal()] != 1) {
        break label210;
      }
      Property.Name localName1 = ResourceType.NAME;
      localObject = DisplayName.NAME;
      Property.Name localName2 = CalendarColor.NAME;
      Property.Name localName3 = CalendarDescription.NAME;
      Property.Name localName4 = CalendarTimezone.NAME;
      Property.Name localName5 = CurrentUserPrivilegeSet.NAME;
      Property.Name localName6 = SupportedCalendarComponentSet.NAME;
      Property.Name localName7 = CalendarHomeSet.NAME;
      paramService = CurrentUserPrincipal.NAME;
      Lambda local1 = new com/android/calendar/syncer/resource/DavResourceFinder$checkUserGivenURL$1;
      local1.<init>(this, parama);
      paramt.propfind(0, new Property.Name[] { localName1, localObject, localName2, localName3, localName4, localName5, localName6, localName7, paramService }, local1);
    }
    catch (Exception paramt)
    {
      Log.d("CalSync:D:DavResourceFinder", "PROPFIND/OPTIONS on user-given URL failed", paramt);
      if ((paramt instanceof UnauthorizedException)) {
        break label211;
      }
    }
    if (!(paramt instanceof SocketTimeoutException)) {
      label210:
      return;
    }
    label211:
    throw paramt;
  }
  
  private final t e(String paramString, Service paramService)
    throws IOException, HttpException, DavException
  {
    Object localObject1 = new LinkedList();
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append('_');
    ((StringBuilder)localObject2).append(paramService.getWellKnownName());
    ((StringBuilder)localObject2).append("s._tcp.");
    ((StringBuilder)localObject2).append(paramString);
    String str = ((StringBuilder)localObject2).toString();
    localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append("Looking up SRV records for ");
    ((StringBuilder)localObject2).append(str);
    Log.d("CalSync:D:DavResourceFinder", ((StringBuilder)localObject2).toString());
    localObject2 = new Lookup(str, 33);
    c localc = c.a;
    localc.b(this.a, (Lookup)localObject2);
    Object localObject3 = ((Lookup)localObject2).run();
    localObject2 = localObject3;
    if (localObject3 == null) {
      localObject2 = new Record[0];
    }
    localObject2 = localc.c((Record[])localObject2);
    int i = 443;
    if (localObject2 != null)
    {
      paramString = ((SRVRecord)localObject2).getTarget().toString(true);
      r.e(paramString, "srv.target.toString(true)");
      i = ((SRVRecord)localObject2).getPort();
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("Found ");
      ((StringBuilder)localObject2).append(paramService);
      ((StringBuilder)localObject2).append(" service at https://");
      ((StringBuilder)localObject2).append(paramString);
      ((StringBuilder)localObject2).append(':');
      ((StringBuilder)localObject2).append(i);
      Log.i("CalSync:D:DavResourceFinder", ((StringBuilder)localObject2).toString());
    }
    else
    {
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("Didn't find ");
      ((StringBuilder)localObject2).append(paramService);
      ((StringBuilder)localObject2).append(" service, trying at https://");
      ((StringBuilder)localObject2).append(paramString);
      ((StringBuilder)localObject2).append(':');
      ((StringBuilder)localObject2).append(443);
      Log.i("CalSync:D:DavResourceFinder", ((StringBuilder)localObject2).toString());
    }
    localObject2 = new Lookup(str, 16);
    localc.b(this.a, (Lookup)localObject2);
    ((LinkedList)localObject1).addAll(localc.a(((Lookup)localObject2).run()));
    localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append("/.well-known/");
    ((StringBuilder)localObject2).append(paramService.getWellKnownName());
    ((LinkedList)localObject1).add(((StringBuilder)localObject2).toString());
    ((LinkedList)localObject1).add("/");
    localObject2 = ((AbstractCollection)localObject1).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject3 = (String)((Iterator)localObject2).next();
      try
      {
        localObject1 = new okhttp3/t$a;
        ((t.a)localObject1).<init>();
        localObject1 = ((t.a)localObject1).u("https").j(paramString).p(i);
        r.e(localObject3, "path");
        localObject1 = ((t.a)localObject1).f((String)localObject3).d();
        localObject3 = new java/lang/StringBuilder;
        ((StringBuilder)localObject3).<init>();
        ((StringBuilder)localObject3).append("Trying to determine principal from initial context path=");
        ((StringBuilder)localObject3).append(localObject1);
        Log.i("CalSync:D:DavResourceFinder", ((StringBuilder)localObject3).toString());
        localObject3 = q((t)localObject1, paramService);
        if (localObject3 != null) {
          return localObject3;
        }
      }
      catch (Exception paramString)
      {
        Log.w("CalSync:D:DavResourceFinder", "No resource found", paramString);
        throw paramString;
      }
    }
    return null;
  }
  
  private final DavResourceFinder.Configuration.a j(Service paramService)
  {
    Object localObject1 = this.b.getBaseURI();
    r.c(localObject1);
    DavResourceFinder.Configuration.a locala = new DavResourceFinder.Configuration.a(null, null, null, null, 15, null);
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append("Finding initial ");
    ((StringBuilder)localObject2).append(paramService.getWellKnownName());
    ((StringBuilder)localObject2).append(" service configuration");
    Log.i("CalSync:D:DavResourceFinder", ((StringBuilder)localObject2).toString());
    localObject2 = ((URI)localObject1).getScheme();
    int i = 1;
    if ((!k.p((String)localObject2, "http", true)) && (!k.p(((URI)localObject1).getScheme(), "https", true)))
    {
      localObject1 = ((URI)localObject1).getSchemeSpecificPart();
      r.e(localObject1, "mailbox");
      j = k.a0((CharSequence)localObject1, "@", 0, false, 6, null);
      if (j != -1)
      {
        localObject1 = ((String)localObject1).substring(j + 1);
        r.e(localObject1, "this as java.lang.String).substring(startIndex)");
        break label297;
      }
    }
    else
    {
      localObject2 = t.l.e((URI)localObject1);
      if (localObject2 != null)
      {
        if (k.p(((t)localObject2).s(), "https", true)) {
          localObject1 = ((t)localObject2).h();
        } else {
          localObject1 = null;
        }
        d((t)localObject2, paramService, locala);
        if (locala.d() == null) {
          try
          {
            StringBuilder localStringBuilder = new java/lang/StringBuilder;
            localStringBuilder.<init>();
            localStringBuilder.append("/.well-known/");
            localStringBuilder.append(paramService.getWellKnownName());
            localObject2 = ((t)localObject2).r(localStringBuilder.toString());
            r.c(localObject2);
            locala.e(q((t)localObject2, paramService));
          }
          catch (Exception localException2)
          {
            Log.d("CalSync:D:DavResourceFinder", "Well-known URL detection failed", localException2);
          }
        }
        break label297;
      }
    }
    localObject1 = null;
    label297:
    if ((locala.d() == null) && (localObject1 != null))
    {
      Log.i("CalSync:D:DavResourceFinder", "No principal found at user-given URL, trying to discover");
      try
      {
        locala.e(e((String)localObject1, paramService));
      }
      catch (Exception localException1)
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append(paramService);
        ((StringBuilder)localObject1).append(" service discovery failed");
        Log.d("CalSync:D:DavResourceFinder", ((StringBuilder)localObject1).toString(), localException1);
        throw localException1;
      }
    }
    if (paramService == Service.CALDAV)
    {
      paramService = localException1.d();
      if (paramService != null) {
        localException1.b().addAll(z(paramService));
      }
    }
    int j = i;
    if (localException1.d() == null)
    {
      j = i;
      if (!(localException1.c().isEmpty() ^ true)) {
        if ((localException1.a().isEmpty() ^ true)) {
          j = i;
        } else {
          j = 0;
        }
      }
    }
    if (j != 0) {
      paramService = localException1;
    } else {
      paramService = null;
    }
    return paramService;
  }
  
  private final void s(Exception paramException)
  {
    if ((paramException instanceof UnauthorizedException))
    {
      paramException = DavResourceFinder.Configuration.Reason.REASON_401;
    }
    else
    {
      boolean bool1 = paramException instanceof SocketTimeoutException;
      boolean bool2 = true;
      if (bool1) {
        bool1 = true;
      } else {
        bool1 = paramException instanceof HttpException;
      }
      if (bool1)
      {
        paramException = DavResourceFinder.Configuration.Reason.REASON_CONNECT_FAILED;
      }
      else
      {
        if ((paramException instanceof NotFoundException)) {
          bool1 = bool2;
        } else {
          bool1 = paramException instanceof DavException;
        }
        if (bool1) {
          paramException = DavResourceFinder.Configuration.Reason.REASON_RESOURCE_NOT_FOUND;
        } else {
          paramException = DavResourceFinder.Configuration.Reason.REASON_OTHER_EXCEPTION;
        }
      }
    }
    this.c = paramException;
  }
  
  public void close()
  {
    this.d.close();
  }
  
  public final Configuration m()
  {
    Object localObject = null;
    try
    {
      DavResourceFinder.Configuration.a locala = j(Service.CALDAV);
      localObject = locala;
    }
    catch (Exception localException1) {}
    try
    {
      Log.i("CalSync:D:DavResourceFinder", "CalDAV service detection failed", localException1);
      s(localException1);
      label31:
      return new Configuration(localObject, this.c);
    }
    catch (Exception localException2)
    {
      break label31;
    }
  }
  
  public final t q(t paramt, Service paramService)
    throws IOException, HttpException, DavException
  {
    r.f(paramt, "url");
    final Ref.ObjectRef localObjectRef = new Ref.ObjectRef();
    paramt = new DavResource(this.d.d(), paramt, null, 4, null);
    Property.Name localName = CurrentUserPrincipal.NAME;
    paramService = new Lambda(paramService)
    {
      public final void invoke(Response paramAnonymousResponse, Response.HrefRelation paramAnonymousHrefRelation)
      {
        r.f(paramAnonymousResponse, "response");
        r.f(paramAnonymousHrefRelation, "<anonymous parameter 1>");
        paramAnonymousHrefRelation = (CurrentUserPrincipal)paramAnonymousResponse.get(CurrentUserPrincipal.class);
        if (paramAnonymousHrefRelation != null)
        {
          Object localObject1 = paramAnonymousHrefRelation.getHref();
          if (localObject1 != null)
          {
            paramAnonymousHrefRelation = this.$service;
            Object localObject2 = jdField_this;
            Ref.ObjectRef localObjectRef = localObjectRef;
            paramAnonymousResponse = paramAnonymousResponse.getRequestedUrl().r((String)localObject1);
            if (paramAnonymousResponse != null)
            {
              localObject1 = new StringBuilder();
              ((StringBuilder)localObject1).append("Found current-user-principal: ");
              ((StringBuilder)localObject1).append(paramAnonymousResponse);
              Log.i("CalSync:D:DavResourceFinder", ((StringBuilder)localObject1).toString());
              if ((paramAnonymousHrefRelation != null) && (!((DavResourceFinder)localObject2).x(paramAnonymousResponse, paramAnonymousHrefRelation)))
              {
                localObject2 = new StringBuilder();
                ((StringBuilder)localObject2).append(paramAnonymousResponse);
                ((StringBuilder)localObject2).append(" doesn't provide required ");
                ((StringBuilder)localObject2).append(paramAnonymousHrefRelation);
                ((StringBuilder)localObject2).append(" service");
                Log.i("CalSync:D:DavResourceFinder", ((StringBuilder)localObject2).toString());
              }
              else
              {
                localObjectRef.element = paramAnonymousResponse;
              }
            }
          }
        }
      }
    };
    paramt.propfind(0, new Property.Name[] { localName }, paramService);
    return (t)localObjectRef.element;
  }
  
  public final boolean x(t paramt, Service paramService)
    throws IOException
  {
    r.f(paramt, "url");
    r.f(paramService, "service");
    Ref.BooleanRef localBooleanRef = new Ref.BooleanRef();
    try
    {
      DavResource localDavResource = new at/bitfire/dav4jvm/DavResource;
      localDavResource.<init>(this.d.d(), paramt, null, 4, null);
      Lambda local1 = new com/android/calendar/syncer/resource/DavResourceFinder$providesService$1;
      local1.<init>(paramService, localBooleanRef);
      localDavResource.options(local1);
    }
    catch (Exception localException)
    {
      paramService = new StringBuilder();
      paramService.append("Couldn't detect services on ");
      paramService.append(paramt);
      Log.d("CalSync:D:DavResourceFinder", paramService.toString(), localException);
      if ((!(localException instanceof HttpException)) && (!(localException instanceof DavException))) {
        throw localException;
      }
    }
    return localBooleanRef.element;
  }
  
  public final List<String> z(t paramt)
  {
    r.f(paramt, "principal");
    Ref.ObjectRef localObjectRef = new Ref.ObjectRef();
    localObjectRef.element = new LinkedList();
    try
    {
      DavResource localDavResource = new at/bitfire/dav4jvm/DavResource;
      localDavResource.<init>(this.d.d(), paramt, null, 4, null);
      paramt = CalendarUserAddressSet.NAME;
      Lambda local1 = new com/android/calendar/syncer/resource/DavResourceFinder$queryEmailAddress$1;
      local1.<init>(localObjectRef);
      localDavResource.propfind(0, new Property.Name[] { paramt }, local1);
    }
    catch (Exception paramt)
    {
      Log.w("CalSync:D:DavResourceFinder", "Couldn't query user email address", paramt);
    }
    return (List)localObjectRef.element;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;", "", "", "toString", "Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;", "a", "Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;", "()Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;", "calDAV", "Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;", "b", "Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;", "()Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;", "reason", "<init>", "(Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;)V", "Reason", "syncer_release"}, k=1, mv={1, 7, 1})
  public static final class Configuration
  {
    private final a a;
    private final Reason b;
    
    public Configuration(a parama, Reason paramReason)
    {
      this.a = parama;
      this.b = paramReason;
    }
    
    public final a a()
    {
      return this.a;
    }
    
    public final Reason b()
    {
      return this.b;
    }
    
    public String toString()
    {
      Object localObject = new g(this);
      ((g)localObject).r(new String[] { "logs" });
      localObject = ((g)localObject).toString();
      r.e(localObject, "builder.toString()");
      return localObject;
    }
    
    @Metadata(d1={""}, d2={"Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$Reason;", "", "(Ljava/lang/String;I)V", "REASON_401", "REASON_CONNECT_FAILED", "REASON_BLOCK", "REASON_RESOURCE_NOT_FOUND", "REASON_OTHER_EXCEPTION", "syncer_release"}, k=1, mv={1, 7, 1}, xi=48)
    public static enum Reason
    {
      static
      {
        REASON_BLOCK = new Reason("REASON_BLOCK", 2);
        REASON_RESOURCE_NOT_FOUND = new Reason("REASON_RESOURCE_NOT_FOUND", 3);
        REASON_OTHER_EXCEPTION = new Reason("REASON_OTHER_EXCEPTION", 4);
      }
      
      private Reason() {}
    }
    
    @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;", "", "", "toString", "", "hashCode", "other", "", "equals", "Lokhttp3/t;", "a", "Lokhttp3/t;", "d", "()Lokhttp3/t;", "e", "(Lokhttp3/t;)V", "principal", "", "b", "Ljava/util/Set;", "c", "()Ljava/util/Set;", "homeSets", "", "Lcom/android/calendar/syncer/model/Collection;", "Ljava/util/Map;", "()Ljava/util/Map;", "collections", "", "Ljava/util/List;", "()Ljava/util/List;", "emails", "<init>", "(Lokhttp3/t;Ljava/util/Set;Ljava/util/Map;Ljava/util/List;)V", "syncer_release"}, k=1, mv={1, 7, 1})
    public static final class a
    {
      private t a;
      private final Set<t> b;
      private final Map<t, com.android.calendar.syncer.model.Collection> c;
      private final List<String> d;
      
      public a()
      {
        this(null, null, null, null, 15, null);
      }
      
      public a(t paramt, Set<t> paramSet, Map<t, com.android.calendar.syncer.model.Collection> paramMap, List<String> paramList)
      {
        this.a = paramt;
        this.b = paramSet;
        this.c = paramMap;
        this.d = paramList;
      }
      
      public final Map<t, com.android.calendar.syncer.model.Collection> a()
      {
        return this.c;
      }
      
      public final List<String> b()
      {
        return this.d;
      }
      
      public final Set<t> c()
      {
        return this.b;
      }
      
      public final t d()
      {
        return this.a;
      }
      
      public final void e(t paramt)
      {
        this.a = paramt;
      }
      
      public boolean equals(Object paramObject)
      {
        if (this == paramObject) {
          return true;
        }
        if (!(paramObject instanceof a)) {
          return false;
        }
        paramObject = (a)paramObject;
        if (!r.a(this.a, paramObject.a)) {
          return false;
        }
        if (!r.a(this.b, paramObject.b)) {
          return false;
        }
        if (!r.a(this.c, paramObject.c)) {
          return false;
        }
        return r.a(this.d, paramObject.d);
      }
      
      public int hashCode()
      {
        t localt = this.a;
        int i;
        if (localt == null) {
          i = 0;
        } else {
          i = localt.hashCode();
        }
        return ((i * 31 + this.b.hashCode()) * 31 + this.c.hashCode()) * 31 + this.d.hashCode();
      }
      
      public String toString()
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("ServiceInfo(principal=");
        localStringBuilder.append(this.a);
        localStringBuilder.append(", homeSets=");
        localStringBuilder.append(this.b);
        localStringBuilder.append(", collections=");
        localStringBuilder.append(this.c);
        localStringBuilder.append(", emails=");
        localStringBuilder.append(this.d);
        localStringBuilder.append(')');
        return localStringBuilder.toString();
      }
    }
  }
  
  @Metadata(d1={""}, d2={"Lcom/android/calendar/syncer/resource/DavResourceFinder$Service;", "", "wellKnownName", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getWellKnownName", "()Ljava/lang/String;", "toString", "CALDAV", "syncer_release"}, k=1, mv={1, 7, 1}, xi=48)
  public static enum Service
  {
    private final String wellKnownName;
    
    private Service(String paramString)
    {
      this.wellKnownName = paramString;
    }
    
    public final String getWellKnownName()
    {
      return this.wellKnownName;
    }
    
    public String toString()
    {
      return this.wellKnownName;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/resource/DavResourceFinder$a;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
  public static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.resource.DavResourceFinder
 * JD-Core Version:    0.7.0.1
 */