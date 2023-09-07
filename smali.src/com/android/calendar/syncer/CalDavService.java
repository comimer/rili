package com.android.calendar.syncer;

import android.accounts.Account;
import android.content.ContentResolver;
import android.content.Intent;
import android.net.Uri;
import android.os.BaseBundle;
import android.os.Binder;
import android.os.Bundle;
import android.util.Log;
import at.bitfire.dav4jvm.DavResource;
import at.bitfire.dav4jvm.Property.Name;
import at.bitfire.dav4jvm.Response;
import at.bitfire.dav4jvm.Response.HrefRelation;
import at.bitfire.dav4jvm.UrlUtils;
import at.bitfire.dav4jvm.exception.HttpException;
import at.bitfire.dav4jvm.property.AddressbookDescription;
import at.bitfire.dav4jvm.property.CalendarColor;
import at.bitfire.dav4jvm.property.CalendarDescription;
import at.bitfire.dav4jvm.property.CalendarHomeSet;
import at.bitfire.dav4jvm.property.CalendarProxyReadFor;
import at.bitfire.dav4jvm.property.CalendarProxyWriteFor;
import at.bitfire.dav4jvm.property.CurrentUserPrivilegeSet;
import at.bitfire.dav4jvm.property.DisplayName;
import at.bitfire.dav4jvm.property.GroupMembership;
import at.bitfire.dav4jvm.property.HrefListProperty;
import at.bitfire.dav4jvm.property.ResourceType;
import at.bitfire.dav4jvm.property.Source;
import at.bitfire.dav4jvm.property.SupportedAddressData;
import at.bitfire.dav4jvm.property.SupportedCalendarComponentSet;
import com.android.calendar.syncer.model.Collection.Companion;
import com.android.calendar.syncer.model.CollectionDao;
import com.android.calendar.syncer.model.DaoTools;
import com.android.calendar.syncer.model.HomeSet;
import com.android.calendar.syncer.model.HomeSetDao;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import kotlin.Metadata;
import kotlin.coroutines.c;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import kotlin.u;
import kotlinx.coroutines.h;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.w0;
import okhttp3.t;
import okhttp3.x;
import w7.l;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/CalDavService;", "Landroid/app/Service;", "", "authority", "Landroid/accounts/Account;", "account", "Lkotlin/u;", "e", "", "serviceId", "g", "Landroid/content/Intent;", "intent", "", "flags", "startId", "onStartCommand", "Lcom/android/calendar/syncer/CalDavService$b;", "f", "Ljava/util/HashSet;", "a", "Ljava/util/HashSet;", "runningRefresh", "Ljava/util/LinkedList;", "Ljava/lang/ref/WeakReference;", "Lcom/android/calendar/syncer/CalDavService$c;", "b", "Ljava/util/LinkedList;", "refreshingStatusListeners", "c", "Lcom/android/calendar/syncer/CalDavService$b;", "binder", "<init>", "()V", "d", "syncer_release"}, k=1, mv={1, 7, 1})
public final class CalDavService
  extends android.app.Service
{
  public static final a d = new a(null);
  private static final Property.Name[] e = { ResourceType.NAME, CurrentUserPrivilegeSet.NAME, DisplayName.NAME, AddressbookDescription.NAME, SupportedAddressData.NAME, CalendarDescription.NAME, CalendarColor.NAME, SupportedCalendarComponentSet.NAME, Source.NAME };
  private final HashSet<Long> a = new HashSet();
  private final LinkedList<WeakReference<c>> b = new LinkedList();
  private final b c = new b();
  
  private final void e(String paramString, Account paramAccount)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Forcing ");
    ((StringBuilder)localObject).append(paramString);
    ((StringBuilder)localObject).append(" synchronization of ");
    ((StringBuilder)localObject).append(paramAccount);
    Log.i("CalSync:D:CalDavService", ((StringBuilder)localObject).toString());
    localObject = new Bundle(2);
    ((BaseBundle)localObject).putBoolean("force", true);
    ((BaseBundle)localObject).putBoolean("expedited", true);
    ContentResolver.requestSync(paramAccount, paramString, (Bundle)localObject);
  }
  
  /* Error */
  private final void g(long paramLong)
  {
    // Byte code:
    //   0: lload_1
    //   1: lstore_3
    //   2: getstatic 194	com/android/calendar/syncer/model/AppDatabase:Companion	Lcom/android/calendar/syncer/model/AppDatabase$Companion;
    //   5: aload_0
    //   6: invokevirtual 200	com/android/calendar/syncer/a:getInstance	(Landroid/content/Context;)Ljava/lang/Object;
    //   9: checkcast 190	com/android/calendar/syncer/model/AppDatabase
    //   12: astore 5
    //   14: aload 5
    //   16: invokevirtual 204	com/android/calendar/syncer/model/AppDatabase:homeSetDao	()Lcom/android/calendar/syncer/model/HomeSetDao;
    //   19: astore 6
    //   21: aload 5
    //   23: invokevirtual 208	com/android/calendar/syncer/model/AppDatabase:collectionDao	()Lcom/android/calendar/syncer/model/CollectionDao;
    //   26: astore 7
    //   28: aload 5
    //   30: invokevirtual 212	com/android/calendar/syncer/model/AppDatabase:serviceDao	()Lcom/android/calendar/syncer/model/ServiceDao;
    //   33: lload_3
    //   34: invokeinterface 218 3 0
    //   39: astore 5
    //   41: aload 5
    //   43: ifnull +1535 -> 1578
    //   46: new 220	android/accounts/Account
    //   49: dup
    //   50: aload 5
    //   52: invokevirtual 225	com/android/calendar/syncer/model/Service:getAccountName	()Ljava/lang/String;
    //   55: getstatic 231	com/android/calendar/syncer/account/AccountHelper$AccountType:ACCOUNT_TYPE_CALENDAR	Lcom/android/calendar/syncer/account/AccountHelper$AccountType;
    //   58: invokevirtual 234	com/android/calendar/syncer/account/AccountHelper$AccountType:getAccountType	()Ljava/lang/String;
    //   61: invokespecial 237	android/accounts/Account:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   64: astore 8
    //   66: aload 6
    //   68: lload_3
    //   69: invokeinterface 243 3 0
    //   74: astore 9
    //   76: new 245	java/util/LinkedHashMap
    //   79: dup
    //   80: aload 9
    //   82: bipush 10
    //   84: invokestatic 251	kotlin/collections/t:u	(Ljava/lang/Iterable;I)I
    //   87: invokestatic 256	kotlin/collections/m0:e	(I)I
    //   90: bipush 16
    //   92: invokestatic 261	b8/g:c	(II)I
    //   95: invokespecial 262	java/util/LinkedHashMap:<init>	(I)V
    //   98: astore 10
    //   100: aload 9
    //   102: invokeinterface 268 1 0
    //   107: astore 11
    //   109: aload 11
    //   111: invokeinterface 274 1 0
    //   116: ifeq +33 -> 149
    //   119: aload 11
    //   121: invokeinterface 278 1 0
    //   126: astore 9
    //   128: aload 10
    //   130: aload 9
    //   132: checkcast 280	com/android/calendar/syncer/model/HomeSet
    //   135: invokevirtual 284	com/android/calendar/syncer/model/HomeSet:getUrl	()Lokhttp3/t;
    //   138: aload 9
    //   140: invokeinterface 290 3 0
    //   145: pop
    //   146: goto -37 -> 109
    //   149: aload 10
    //   151: invokestatic 293	kotlin/collections/m0:u	(Ljava/util/Map;)Ljava/util/Map;
    //   154: astore 10
    //   156: aload 7
    //   158: lload_3
    //   159: invokeinterface 296 3 0
    //   164: astore 11
    //   166: new 245	java/util/LinkedHashMap
    //   169: dup
    //   170: aload 11
    //   172: bipush 10
    //   174: invokestatic 251	kotlin/collections/t:u	(Ljava/lang/Iterable;I)I
    //   177: invokestatic 256	kotlin/collections/m0:e	(I)I
    //   180: bipush 16
    //   182: invokestatic 261	b8/g:c	(II)I
    //   185: invokespecial 262	java/util/LinkedHashMap:<init>	(I)V
    //   188: astore 9
    //   190: aload 11
    //   192: invokeinterface 268 1 0
    //   197: astore 11
    //   199: aload 11
    //   201: invokeinterface 274 1 0
    //   206: ifeq +33 -> 239
    //   209: aload 11
    //   211: invokeinterface 278 1 0
    //   216: astore 12
    //   218: aload 9
    //   220: aload 12
    //   222: checkcast 298	com/android/calendar/syncer/model/Collection
    //   225: invokevirtual 299	com/android/calendar/syncer/model/Collection:getUrl	()Lokhttp3/t;
    //   228: aload 12
    //   230: invokeinterface 290 3 0
    //   235: pop
    //   236: goto -37 -> 199
    //   239: aload 9
    //   241: invokestatic 293	kotlin/collections/m0:u	(Ljava/util/Map;)Ljava/util/Map;
    //   244: astore 9
    //   246: new 139	java/lang/StringBuilder
    //   249: astore 11
    //   251: aload 11
    //   253: invokespecial 140	java/lang/StringBuilder:<init>	()V
    //   256: aload 11
    //   258: ldc_w 301
    //   261: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   264: pop
    //   265: aload 11
    //   267: aload 5
    //   269: invokevirtual 304	com/android/calendar/syncer/model/Service:getType	()Ljava/lang/String;
    //   272: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   275: pop
    //   276: aload 11
    //   278: ldc_w 306
    //   281: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   284: pop
    //   285: aload 11
    //   287: aload 5
    //   289: invokevirtual 151	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   292: pop
    //   293: ldc 153
    //   295: aload 11
    //   297: invokevirtual 157	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   300: invokestatic 163	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   303: pop
    //   304: new 308	com/android/calendar/syncer/net/CalDavHttpClient$a
    //   307: astore 11
    //   309: new 310	d2/a
    //   312: astore 12
    //   314: aload 12
    //   316: aload_0
    //   317: aload 8
    //   319: invokespecial 313	d2/a:<init>	(Landroid/content/Context;Landroid/accounts/Account;)V
    //   322: aload 11
    //   324: aload_0
    //   325: aload 12
    //   327: invokespecial 316	com/android/calendar/syncer/net/CalDavHttpClient$a:<init>	(Landroid/content/Context;Ld2/a;)V
    //   330: iconst_1
    //   331: istore 13
    //   333: aload 11
    //   335: iconst_1
    //   336: invokevirtual 319	com/android/calendar/syncer/net/CalDavHttpClient$a:d	(Z)Lcom/android/calendar/syncer/net/CalDavHttpClient$a;
    //   339: invokevirtual 322	com/android/calendar/syncer/net/CalDavHttpClient$a:b	()Lcom/android/calendar/syncer/net/CalDavHttpClient;
    //   342: invokevirtual 327	com/android/calendar/syncer/net/CalDavHttpClient:d	()Lokhttp3/x;
    //   345: astore 11
    //   347: aload 5
    //   349: invokevirtual 330	com/android/calendar/syncer/model/Service:getPrincipal	()Lokhttp3/t;
    //   352: astore 12
    //   354: aload 12
    //   356: ifnull +65 -> 421
    //   359: new 139	java/lang/StringBuilder
    //   362: astore 8
    //   364: aload 8
    //   366: invokespecial 140	java/lang/StringBuilder:<init>	()V
    //   369: aload 8
    //   371: ldc_w 332
    //   374: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   377: pop
    //   378: aload 8
    //   380: aload 12
    //   382: invokevirtual 151	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   385: pop
    //   386: aload 8
    //   388: ldc_w 334
    //   391: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   394: pop
    //   395: ldc 153
    //   397: aload 8
    //   399: invokevirtual 157	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   402: invokestatic 336	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   405: pop
    //   406: aload 5
    //   408: aload 10
    //   410: aload 11
    //   412: aload 12
    //   414: iconst_0
    //   415: bipush 16
    //   417: aconst_null
    //   418: invokestatic 339	com/android/calendar/syncer/CalDavService:i	(Lcom/android/calendar/syncer/model/Service;Ljava/util/Map;Lokhttp3/x;Lokhttp3/t;ZILjava/lang/Object;)V
    //   421: aload 10
    //   423: invokeinterface 343 1 0
    //   428: invokeinterface 346 1 0
    //   433: astore 12
    //   435: aload 12
    //   437: invokeinterface 274 1 0
    //   442: istore 14
    //   444: iload 14
    //   446: ifeq +290 -> 736
    //   449: aload 12
    //   451: invokeinterface 278 1 0
    //   456: checkcast 348	java/util/Map$Entry
    //   459: astore 8
    //   461: new 139	java/lang/StringBuilder
    //   464: astore 15
    //   466: aload 15
    //   468: invokespecial 140	java/lang/StringBuilder:<init>	()V
    //   471: aload 15
    //   473: ldc_w 350
    //   476: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   479: pop
    //   480: aload 15
    //   482: aload 8
    //   484: invokeinterface 353 1 0
    //   489: invokevirtual 151	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   492: pop
    //   493: ldc 153
    //   495: aload 15
    //   497: invokevirtual 157	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   500: invokestatic 336	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   503: pop
    //   504: new 355	at/bitfire/dav4jvm/DavResource
    //   507: astore 15
    //   509: aload 15
    //   511: aload 11
    //   513: aload 8
    //   515: invokeinterface 353 1 0
    //   520: checkcast 357	okhttp3/t
    //   523: aconst_null
    //   524: iconst_4
    //   525: aconst_null
    //   526: invokespecial 360	at/bitfire/dav4jvm/DavResource:<init>	(Lokhttp3/x;Lokhttp3/t;Ljava/util/logging/Logger;ILkotlin/jvm/internal/o;)V
    //   529: getstatic 108	com/android/calendar/syncer/CalDavService:e	[Lat/bitfire/dav4jvm/Property$Name;
    //   532: astore 16
    //   534: aload 16
    //   536: aload 16
    //   538: arraylength
    //   539: invokestatic 366	java/util/Arrays:copyOf	([Ljava/lang/Object;I)[Ljava/lang/Object;
    //   542: checkcast 367	[Lat/bitfire/dav4jvm/Property$Name;
    //   545: astore 16
    //   547: new 17	com/android/calendar/syncer/CalDavService$refreshCollections$1$2
    //   550: astore 17
    //   552: iload 13
    //   554: istore 18
    //   556: aload 17
    //   558: aload 8
    //   560: lload_1
    //   561: aload 5
    //   563: aload 9
    //   565: invokespecial 370	com/android/calendar/syncer/CalDavService$refreshCollections$1$2:<init>	(Ljava/util/Map$Entry;JLcom/android/calendar/syncer/model/Service;Ljava/util/Map;)V
    //   568: aload 15
    //   570: iload 18
    //   572: aload 16
    //   574: aload 17
    //   576: invokevirtual 374	at/bitfire/dav4jvm/DavResource:propfind	(I[Lat/bitfire/dav4jvm/Property$Name;Lw7/p;)V
    //   579: iload 18
    //   581: istore 13
    //   583: goto +116 -> 699
    //   586: astore 8
    //   588: goto +5 -> 593
    //   591: astore 8
    //   593: iconst_3
    //   594: anewarray 376	java/lang/Integer
    //   597: astore 15
    //   599: iconst_0
    //   600: istore 19
    //   602: iconst_0
    //   603: istore 20
    //   605: iload 20
    //   607: istore 21
    //   609: iload 19
    //   611: istore 18
    //   613: aload 15
    //   615: iconst_0
    //   616: sipush 403
    //   619: invokestatic 380	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   622: aastore
    //   623: iload 20
    //   625: istore 21
    //   627: iload 19
    //   629: istore 18
    //   631: aload 15
    //   633: iload 13
    //   635: sipush 404
    //   638: invokestatic 380	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   641: aastore
    //   642: iload 20
    //   644: istore 21
    //   646: iload 19
    //   648: istore 18
    //   650: aload 15
    //   652: iconst_2
    //   653: sipush 410
    //   656: invokestatic 380	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   659: aastore
    //   660: iload 20
    //   662: istore 21
    //   664: iload 19
    //   666: istore 18
    //   668: aload 15
    //   670: aload 8
    //   672: invokevirtual 384	at/bitfire/dav4jvm/exception/HttpException:getCode	()I
    //   675: invokestatic 380	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   678: invokestatic 389	kotlin/collections/j:u	([Ljava/lang/Object;Ljava/lang/Object;)Z
    //   681: ifeq +18 -> 699
    //   684: iload 20
    //   686: istore 21
    //   688: iload 19
    //   690: istore 18
    //   692: aload 12
    //   694: invokeinterface 392 1 0
    //   699: goto -264 -> 435
    //   702: astore 5
    //   704: lload_1
    //   705: lstore_3
    //   706: iconst_0
    //   707: istore 13
    //   709: goto +735 -> 1444
    //   712: astore 5
    //   714: lload_1
    //   715: lstore_3
    //   716: iconst_0
    //   717: istore 13
    //   719: goto +580 -> 1299
    //   722: astore 5
    //   724: lload_1
    //   725: lstore_3
    //   726: goto +560 -> 1286
    //   729: astore 5
    //   731: lload_1
    //   732: lstore_3
    //   733: goto +563 -> 1296
    //   736: iconst_0
    //   737: istore 19
    //   739: iconst_0
    //   740: istore 20
    //   742: iload 20
    //   744: istore 21
    //   746: iload 19
    //   748: istore 18
    //   750: aload 9
    //   752: invokeinterface 343 1 0
    //   757: invokeinterface 346 1 0
    //   762: astore 12
    //   764: iload 20
    //   766: istore 21
    //   768: iload 19
    //   770: istore 18
    //   772: aload 12
    //   774: invokeinterface 274 1 0
    //   779: ifeq +320 -> 1099
    //   782: iload 20
    //   784: istore 21
    //   786: iload 19
    //   788: istore 18
    //   790: aload 12
    //   792: invokeinterface 278 1 0
    //   797: checkcast 348	java/util/Map$Entry
    //   800: astore 8
    //   802: iload 20
    //   804: istore 21
    //   806: iload 19
    //   808: istore 18
    //   810: aload 8
    //   812: invokeinterface 353 1 0
    //   817: checkcast 357	okhttp3/t
    //   820: astore 15
    //   822: iload 20
    //   824: istore 21
    //   826: iload 19
    //   828: istore 18
    //   830: aload 8
    //   832: invokeinterface 395 1 0
    //   837: checkcast 298	com/android/calendar/syncer/model/Collection
    //   840: invokevirtual 398	com/android/calendar/syncer/model/Collection:getConfirmed	()Z
    //   843: istore 14
    //   845: iload 14
    //   847: ifne -83 -> 764
    //   850: iload 20
    //   852: istore 21
    //   854: iload 19
    //   856: istore 18
    //   858: new 355	at/bitfire/dav4jvm/DavResource
    //   861: astore 8
    //   863: iload 20
    //   865: istore 21
    //   867: iload 19
    //   869: istore 18
    //   871: aload 8
    //   873: aload 11
    //   875: aload 15
    //   877: aconst_null
    //   878: iconst_4
    //   879: aconst_null
    //   880: invokespecial 360	at/bitfire/dav4jvm/DavResource:<init>	(Lokhttp3/x;Lokhttp3/t;Ljava/util/logging/Logger;ILkotlin/jvm/internal/o;)V
    //   883: iload 20
    //   885: istore 21
    //   887: iload 19
    //   889: istore 18
    //   891: getstatic 108	com/android/calendar/syncer/CalDavService:e	[Lat/bitfire/dav4jvm/Property$Name;
    //   894: astore 15
    //   896: iload 20
    //   898: istore 21
    //   900: iload 19
    //   902: istore 18
    //   904: aload 15
    //   906: aload 15
    //   908: arraylength
    //   909: invokestatic 366	java/util/Arrays:copyOf	([Ljava/lang/Object;I)[Ljava/lang/Object;
    //   912: checkcast 367	[Lat/bitfire/dav4jvm/Property$Name;
    //   915: astore 15
    //   917: iload 20
    //   919: istore 21
    //   921: iload 19
    //   923: istore 18
    //   925: new 19	com/android/calendar/syncer/CalDavService$refreshCollections$1$3
    //   928: astore 16
    //   930: iload 20
    //   932: istore 21
    //   934: iload 19
    //   936: istore 18
    //   938: aload 16
    //   940: aload 5
    //   942: aload 12
    //   944: invokespecial 401	com/android/calendar/syncer/CalDavService$refreshCollections$1$3:<init>	(Lcom/android/calendar/syncer/model/Service;Ljava/util/Iterator;)V
    //   947: iload 20
    //   949: istore 21
    //   951: iload 19
    //   953: istore 18
    //   955: aload 8
    //   957: iload 20
    //   959: aload 15
    //   961: aload 16
    //   963: invokevirtual 374	at/bitfire/dav4jvm/DavResource:propfind	(I[Lat/bitfire/dav4jvm/Property$Name;Lw7/p;)V
    //   966: goto -202 -> 764
    //   969: astore 8
    //   971: goto +5 -> 976
    //   974: astore 8
    //   976: iload 20
    //   978: istore 21
    //   980: iload 19
    //   982: istore 18
    //   984: iconst_3
    //   985: anewarray 376	java/lang/Integer
    //   988: astore 15
    //   990: iload 20
    //   992: istore 21
    //   994: iload 19
    //   996: istore 18
    //   998: aload 15
    //   1000: iload 20
    //   1002: sipush 403
    //   1005: invokestatic 380	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1008: aastore
    //   1009: iload 20
    //   1011: istore 21
    //   1013: iload 19
    //   1015: istore 18
    //   1017: aload 15
    //   1019: iload 13
    //   1021: sipush 404
    //   1024: invokestatic 380	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1027: aastore
    //   1028: iload 20
    //   1030: istore 21
    //   1032: iload 19
    //   1034: istore 18
    //   1036: aload 15
    //   1038: iconst_2
    //   1039: sipush 410
    //   1042: invokestatic 380	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1045: aastore
    //   1046: iload 20
    //   1048: istore 21
    //   1050: iload 19
    //   1052: istore 18
    //   1054: aload 15
    //   1056: aload 8
    //   1058: invokevirtual 384	at/bitfire/dav4jvm/exception/HttpException:getCode	()I
    //   1061: invokestatic 380	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1064: invokestatic 389	kotlin/collections/j:u	([Ljava/lang/Object;Ljava/lang/Object;)Z
    //   1067: ifeq +21 -> 1088
    //   1070: iload 20
    //   1072: istore 21
    //   1074: iload 19
    //   1076: istore 18
    //   1078: aload 12
    //   1080: invokeinterface 392 1 0
    //   1085: goto -119 -> 966
    //   1088: iload 20
    //   1090: istore 21
    //   1092: iload 19
    //   1094: istore 18
    //   1096: aload 8
    //   1098: athrow
    //   1099: iload 20
    //   1101: istore 13
    //   1103: aload 6
    //   1105: lload_1
    //   1106: aload 10
    //   1108: aload 7
    //   1110: aload 9
    //   1112: invokestatic 405	com/android/calendar/syncer/CalDavService:m	(Lcom/android/calendar/syncer/model/HomeSetDao;JLjava/util/Map;Lcom/android/calendar/syncer/model/CollectionDao;Ljava/util/Map;)V
    //   1115: ldc 153
    //   1117: ldc_w 407
    //   1120: invokestatic 163	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   1123: pop
    //   1124: aload_0
    //   1125: getfield 116	com/android/calendar/syncer/CalDavService:a	Ljava/util/HashSet;
    //   1128: lload_1
    //   1129: invokestatic 412	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1132: invokevirtual 415	java/util/HashSet:remove	(Ljava/lang/Object;)Z
    //   1135: pop
    //   1136: aload_0
    //   1137: getfield 121	com/android/calendar/syncer/CalDavService:b	Ljava/util/LinkedList;
    //   1140: astore 8
    //   1142: new 417	java/util/ArrayList
    //   1145: dup
    //   1146: invokespecial 418	java/util/ArrayList:<init>	()V
    //   1149: astore 5
    //   1151: aload 8
    //   1153: invokeinterface 268 1 0
    //   1158: astore 8
    //   1160: aload 8
    //   1162: invokeinterface 274 1 0
    //   1167: ifeq +39 -> 1206
    //   1170: aload 8
    //   1172: invokeinterface 278 1 0
    //   1177: checkcast 420	java/lang/ref/WeakReference
    //   1180: invokevirtual 424	java/lang/ref/Reference:get	()Ljava/lang/Object;
    //   1183: checkcast 12	com/android/calendar/syncer/CalDavService$c
    //   1186: astore 6
    //   1188: aload 6
    //   1190: ifnull -30 -> 1160
    //   1193: aload 5
    //   1195: aload 6
    //   1197: invokeinterface 429 2 0
    //   1202: pop
    //   1203: goto -43 -> 1160
    //   1206: aload 5
    //   1208: invokeinterface 268 1 0
    //   1213: astore 5
    //   1215: aload 5
    //   1217: invokeinterface 274 1 0
    //   1222: ifeq +219 -> 1441
    //   1225: aload 5
    //   1227: invokeinterface 278 1 0
    //   1232: checkcast 12	com/android/calendar/syncer/CalDavService$c
    //   1235: lload_1
    //   1236: iload 13
    //   1238: invokeinterface 433 4 0
    //   1243: goto -28 -> 1215
    //   1246: astore 5
    //   1248: lload_1
    //   1249: lstore_3
    //   1250: goto +194 -> 1444
    //   1253: astore 5
    //   1255: lload_1
    //   1256: lstore_3
    //   1257: goto +42 -> 1299
    //   1260: astore 5
    //   1262: lload_1
    //   1263: lstore_3
    //   1264: iload 21
    //   1266: istore 13
    //   1268: goto +176 -> 1444
    //   1271: astore 5
    //   1273: lload_1
    //   1274: lstore_3
    //   1275: iload 18
    //   1277: istore 13
    //   1279: goto +20 -> 1299
    //   1282: astore 5
    //   1284: lload_1
    //   1285: lstore_3
    //   1286: iconst_0
    //   1287: istore 13
    //   1289: goto +155 -> 1444
    //   1292: astore 5
    //   1294: lload_1
    //   1295: lstore_3
    //   1296: iconst_0
    //   1297: istore 13
    //   1299: ldc 153
    //   1301: ldc_w 435
    //   1304: aload 5
    //   1306: invokestatic 439	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   1309: pop
    //   1310: ldc 153
    //   1312: ldc_w 407
    //   1315: invokestatic 163	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   1318: pop
    //   1319: aload_0
    //   1320: getfield 116	com/android/calendar/syncer/CalDavService:a	Ljava/util/HashSet;
    //   1323: lload_1
    //   1324: invokestatic 412	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1327: invokevirtual 415	java/util/HashSet:remove	(Ljava/lang/Object;)Z
    //   1330: pop
    //   1331: aload_0
    //   1332: getfield 121	com/android/calendar/syncer/CalDavService:b	Ljava/util/LinkedList;
    //   1335: astore 8
    //   1337: new 417	java/util/ArrayList
    //   1340: dup
    //   1341: invokespecial 418	java/util/ArrayList:<init>	()V
    //   1344: astore 5
    //   1346: aload 8
    //   1348: invokeinterface 268 1 0
    //   1353: astore 8
    //   1355: aload 8
    //   1357: invokeinterface 274 1 0
    //   1362: ifeq +39 -> 1401
    //   1365: aload 8
    //   1367: invokeinterface 278 1 0
    //   1372: checkcast 420	java/lang/ref/WeakReference
    //   1375: invokevirtual 424	java/lang/ref/Reference:get	()Ljava/lang/Object;
    //   1378: checkcast 12	com/android/calendar/syncer/CalDavService$c
    //   1381: astore 6
    //   1383: aload 6
    //   1385: ifnull -30 -> 1355
    //   1388: aload 5
    //   1390: aload 6
    //   1392: invokeinterface 429 2 0
    //   1397: pop
    //   1398: goto -43 -> 1355
    //   1401: aload 5
    //   1403: invokeinterface 268 1 0
    //   1408: astore 5
    //   1410: aload 5
    //   1412: invokeinterface 274 1 0
    //   1417: ifeq +24 -> 1441
    //   1420: aload 5
    //   1422: invokeinterface 278 1 0
    //   1427: checkcast 12	com/android/calendar/syncer/CalDavService$c
    //   1430: lload_3
    //   1431: iload 13
    //   1433: invokeinterface 433 4 0
    //   1438: goto -28 -> 1410
    //   1441: return
    //   1442: astore 5
    //   1444: ldc 153
    //   1446: ldc_w 407
    //   1449: invokestatic 163	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   1452: pop
    //   1453: aload_0
    //   1454: getfield 116	com/android/calendar/syncer/CalDavService:a	Ljava/util/HashSet;
    //   1457: lload_1
    //   1458: invokestatic 412	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1461: invokevirtual 415	java/util/HashSet:remove	(Ljava/lang/Object;)Z
    //   1464: pop
    //   1465: aload_0
    //   1466: getfield 121	com/android/calendar/syncer/CalDavService:b	Ljava/util/LinkedList;
    //   1469: astore 6
    //   1471: new 417	java/util/ArrayList
    //   1474: dup
    //   1475: invokespecial 418	java/util/ArrayList:<init>	()V
    //   1478: astore 8
    //   1480: aload 6
    //   1482: invokeinterface 268 1 0
    //   1487: astore 7
    //   1489: aload 7
    //   1491: invokeinterface 274 1 0
    //   1496: ifeq +39 -> 1535
    //   1499: aload 7
    //   1501: invokeinterface 278 1 0
    //   1506: checkcast 420	java/lang/ref/WeakReference
    //   1509: invokevirtual 424	java/lang/ref/Reference:get	()Ljava/lang/Object;
    //   1512: checkcast 12	com/android/calendar/syncer/CalDavService$c
    //   1515: astore 6
    //   1517: aload 6
    //   1519: ifnull -30 -> 1489
    //   1522: aload 8
    //   1524: aload 6
    //   1526: invokeinterface 429 2 0
    //   1531: pop
    //   1532: goto -43 -> 1489
    //   1535: aload 8
    //   1537: invokeinterface 268 1 0
    //   1542: astore 8
    //   1544: aload 8
    //   1546: invokeinterface 274 1 0
    //   1551: ifeq +24 -> 1575
    //   1554: aload 8
    //   1556: invokeinterface 278 1 0
    //   1561: checkcast 12	com/android/calendar/syncer/CalDavService$c
    //   1564: lload_3
    //   1565: iload 13
    //   1567: invokeinterface 433 4 0
    //   1572: goto -28 -> 1544
    //   1575: aload 5
    //   1577: athrow
    //   1578: new 441	java/lang/IllegalArgumentException
    //   1581: dup
    //   1582: ldc_w 443
    //   1585: invokespecial 446	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   1588: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1589	0	this	CalDavService
    //   0	1589	1	paramLong	long
    //   1	1564	3	l	long
    //   12	550	5	localObject1	Object
    //   702	1	5	localObject2	Object
    //   712	1	5	localException1	java.lang.Exception
    //   722	1	5	localObject3	Object
    //   729	212	5	localException2	java.lang.Exception
    //   1149	77	5	localObject4	Object
    //   1246	1	5	localObject5	Object
    //   1253	1	5	localException3	java.lang.Exception
    //   1260	1	5	localObject6	Object
    //   1271	1	5	localException4	java.lang.Exception
    //   1282	1	5	localObject7	Object
    //   1292	13	5	localException5	java.lang.Exception
    //   1344	77	5	localObject8	Object
    //   1442	134	5	localObject9	Object
    //   19	1506	6	localObject10	Object
    //   26	1474	7	localObject11	Object
    //   64	495	8	localObject12	Object
    //   586	1	8	localHttpException1	HttpException
    //   591	80	8	localHttpException2	HttpException
    //   800	156	8	localObject13	Object
    //   969	1	8	localHttpException3	HttpException
    //   974	123	8	localHttpException4	HttpException
    //   1140	415	8	localObject14	Object
    //   74	1037	9	localObject15	Object
    //   98	1009	10	localObject16	Object
    //   107	767	11	localObject17	Object
    //   216	863	12	localObject18	Object
    //   331	1235	13	i	int
    //   442	404	14	bool	boolean
    //   464	591	15	localObject19	Object
    //   532	430	16	localObject20	Object
    //   550	25	17	local2	refreshCollections.1.2
    //   554	722	18	j	int
    //   600	493	19	k	int
    //   603	497	20	m	int
    //   607	658	21	n	int
    // Exception table:
    //   from	to	target	type
    //   556	579	586	at/bitfire/dav4jvm/exception/HttpException
    //   504	552	591	at/bitfire/dav4jvm/exception/HttpException
    //   556	579	702	finally
    //   593	599	702	finally
    //   556	579	712	java/lang/Exception
    //   593	599	712	java/lang/Exception
    //   449	504	722	finally
    //   504	552	722	finally
    //   449	504	729	java/lang/Exception
    //   504	552	729	java/lang/Exception
    //   938	947	969	at/bitfire/dav4jvm/exception/HttpException
    //   955	966	969	at/bitfire/dav4jvm/exception/HttpException
    //   858	863	974	at/bitfire/dav4jvm/exception/HttpException
    //   871	883	974	at/bitfire/dav4jvm/exception/HttpException
    //   891	896	974	at/bitfire/dav4jvm/exception/HttpException
    //   904	917	974	at/bitfire/dav4jvm/exception/HttpException
    //   925	930	974	at/bitfire/dav4jvm/exception/HttpException
    //   1103	1115	1246	finally
    //   1103	1115	1253	java/lang/Exception
    //   613	623	1260	finally
    //   631	642	1260	finally
    //   650	660	1260	finally
    //   668	684	1260	finally
    //   692	699	1260	finally
    //   750	764	1260	finally
    //   772	782	1260	finally
    //   790	802	1260	finally
    //   810	822	1260	finally
    //   830	845	1260	finally
    //   858	863	1260	finally
    //   871	883	1260	finally
    //   891	896	1260	finally
    //   904	917	1260	finally
    //   925	930	1260	finally
    //   938	947	1260	finally
    //   955	966	1260	finally
    //   984	990	1260	finally
    //   998	1009	1260	finally
    //   1017	1028	1260	finally
    //   1036	1046	1260	finally
    //   1054	1070	1260	finally
    //   1078	1085	1260	finally
    //   1096	1099	1260	finally
    //   613	623	1271	java/lang/Exception
    //   631	642	1271	java/lang/Exception
    //   650	660	1271	java/lang/Exception
    //   668	684	1271	java/lang/Exception
    //   692	699	1271	java/lang/Exception
    //   750	764	1271	java/lang/Exception
    //   772	782	1271	java/lang/Exception
    //   790	802	1271	java/lang/Exception
    //   810	822	1271	java/lang/Exception
    //   830	845	1271	java/lang/Exception
    //   858	863	1271	java/lang/Exception
    //   871	883	1271	java/lang/Exception
    //   891	896	1271	java/lang/Exception
    //   904	917	1271	java/lang/Exception
    //   925	930	1271	java/lang/Exception
    //   938	947	1271	java/lang/Exception
    //   955	966	1271	java/lang/Exception
    //   984	990	1271	java/lang/Exception
    //   998	1009	1271	java/lang/Exception
    //   1017	1028	1271	java/lang/Exception
    //   1036	1046	1271	java/lang/Exception
    //   1054	1070	1271	java/lang/Exception
    //   1078	1085	1271	java/lang/Exception
    //   1096	1099	1271	java/lang/Exception
    //   246	330	1282	finally
    //   333	354	1282	finally
    //   359	421	1282	finally
    //   421	435	1282	finally
    //   435	444	1282	finally
    //   246	330	1292	java/lang/Exception
    //   333	354	1292	java/lang/Exception
    //   359	421	1292	java/lang/Exception
    //   421	435	1292	java/lang/Exception
    //   435	444	1292	java/lang/Exception
    //   1299	1310	1442	finally
  }
  
  private static final void h(com.android.calendar.syncer.model.Service paramService, Map<t, HomeSet> paramMap, x paramx, t paramt, boolean paramBoolean)
  {
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    DavResource localDavResource = new DavResource(paramx, paramt, null, 4, null);
    if (r.a(paramService.getType(), "caldav")) {
      try
      {
        Property.Name localName1 = DisplayName.NAME;
        Property.Name localName2 = CalendarHomeSet.NAME;
        Property.Name localName3 = CalendarProxyReadFor.NAME;
        paramt = CalendarProxyWriteFor.NAME;
        Property.Name localName4 = GroupMembership.NAME;
        Lambda local1 = new com/android/calendar/syncer/CalDavService$refreshCollections$queryHomeSets$1;
        local1.<init>(paramBoolean, localDavResource, paramMap, paramService, localLinkedHashSet);
        localDavResource.propfind(0, new Property.Name[] { localName1, localName2, localName3, paramt, localName4 }, local1);
      }
      catch (HttpException paramt)
      {
        if (paramt.getCode() / 100 == 4) {
          Log.i("CalSync:D:CalDavService", "Ignoring Client Error 4xx while looking for calendar home sets", paramt);
        } else {
          throw paramt;
        }
      }
    }
    paramt = localLinkedHashSet.iterator();
    while (paramt.hasNext()) {
      h(paramService, paramMap, paramx, (t)paramt.next(), false);
    }
  }
  
  private static final void j(Set<t> paramSet, t paramt, Response paramResponse)
  {
    Object localObject1 = (CalendarProxyReadFor)paramResponse.get(CalendarProxyReadFor.class);
    String str;
    Object localObject2;
    if (localObject1 != null)
    {
      localObject1 = ((HrefListProperty)localObject1).getHrefs().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        str = (String)((Iterator)localObject1).next();
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("Principal is a read-only proxy for ");
        ((StringBuilder)localObject2).append(str);
        ((StringBuilder)localObject2).append(", checking for home sets");
        Log.d("CalSync:D:CalDavService", ((StringBuilder)localObject2).toString());
        r.e(str, "href");
        localObject2 = paramt.r(str);
        if (localObject2 != null) {
          paramSet.add(localObject2);
        }
      }
    }
    localObject1 = (CalendarProxyWriteFor)paramResponse.get(CalendarProxyWriteFor.class);
    if (localObject1 != null)
    {
      localObject1 = ((HrefListProperty)localObject1).getHrefs().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        str = (String)((Iterator)localObject1).next();
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("Principal is a read/write proxy for ");
        ((StringBuilder)localObject2).append(str);
        ((StringBuilder)localObject2).append(", checking for home sets");
        Log.d("CalSync:D:CalDavService", ((StringBuilder)localObject2).toString());
        r.e(str, "href");
        localObject2 = paramt.r(str);
        if (localObject2 != null) {
          paramSet.add(localObject2);
        }
      }
    }
    paramResponse = (GroupMembership)paramResponse.get(GroupMembership.class);
    if (paramResponse != null)
    {
      paramResponse = paramResponse.getHrefs().iterator();
      while (paramResponse.hasNext())
      {
        localObject1 = (String)paramResponse.next();
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("Principal is member of group ");
        ((StringBuilder)localObject2).append((String)localObject1);
        ((StringBuilder)localObject2).append(", checking for home sets");
        Log.d("CalSync:D:CalDavService", ((StringBuilder)localObject2).toString());
        r.e(localObject1, "href");
        localObject1 = paramt.r((String)localObject1);
        if (localObject1 != null) {
          paramSet.add(localObject1);
        }
      }
    }
  }
  
  private static final void k(CollectionDao paramCollectionDao, long paramLong, Map<t, com.android.calendar.syncer.model.Collection> paramMap)
  {
    new DaoTools(paramCollectionDao).syncAll(paramCollectionDao.getByService(paramLong), paramMap, refreshCollections.saveCollections.1.INSTANCE, refreshCollections.saveCollections.2.INSTANCE);
  }
  
  private static final void l(HomeSetDao paramHomeSetDao, long paramLong, Map<t, HomeSet> paramMap)
  {
    DaoTools.syncAll$default(new DaoTools(paramHomeSetDao), paramHomeSetDao.getByService(paramLong), paramMap, refreshCollections.saveHomesets.1.INSTANCE, null, 8, null);
  }
  
  private static final void m(HomeSetDao paramHomeSetDao, long paramLong, Map<t, HomeSet> paramMap, CollectionDao paramCollectionDao, Map<t, com.android.calendar.syncer.model.Collection> paramMap1)
  {
    l(paramHomeSetDao, paramLong, paramMap);
    k(paramCollectionDao, paramLong, paramMap1);
  }
  
  public b f(Intent paramIntent)
  {
    return this.c;
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    if (paramIntent != null)
    {
      final long l = paramIntent.getLongExtra("davServiceID", -1L);
      Object localObject = paramIntent.getAction();
      if (localObject != null)
      {
        paramInt1 = ((String)localObject).hashCode();
        if (paramInt1 != 1528015910)
        {
          if ((paramInt1 == 1933603770) && (((String)localObject).equals("refreshCollections")) && (this.a.add(Long.valueOf(l))))
          {
            localObject = this.b.iterator();
            while (((Iterator)localObject).hasNext())
            {
              paramIntent = (c)((WeakReference)((Iterator)localObject).next()).get();
              if (paramIntent != null) {
                paramIntent.n(l, true);
              }
            }
            h.d(l0.a(w0.b()), null, null, new SuspendLambda(l, null)
            {
              int label;
              
              public final c<u> create(Object paramAnonymousObject, c<?> paramAnonymousc)
              {
                return new 2(this.this$0, l, paramAnonymousc);
              }
              
              public final Object invoke(k0 paramAnonymousk0, c<? super u> paramAnonymousc)
              {
                return ((2)create(paramAnonymousk0, paramAnonymousc)).invokeSuspend(u.a);
              }
              
              public final Object invokeSuspend(Object paramAnonymousObject)
              {
                a.d();
                if (this.label == 0)
                {
                  kotlin.j.b(paramAnonymousObject);
                  CalDavService.c(this.this$0, l);
                  return u.a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
              }
            }, 3, null);
          }
        }
        else if (((String)localObject).equals("forceSync"))
        {
          paramIntent = paramIntent.getData();
          r.c(paramIntent);
          localObject = paramIntent.getAuthority();
          r.c(localObject);
          e((String)localObject, new Account((String)paramIntent.getPathSegments().get(1), (String)paramIntent.getPathSegments().get(0)));
        }
      }
    }
    return 2;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/CalDavService$a;", "", "", "ACTION_FORCE_SYNC", "Ljava/lang/String;", "ACTION_REFRESH_COLLECTIONS", "EXTRA_DAV_SERVICE_ID", "TAG", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/CalDavService$b;", "Landroid/os/Binder;", "Lcom/android/calendar/syncer/CalDavService$c;", "listener", "", "callImmediateIfRunning", "Lkotlin/u;", "a", "b", "<init>", "(Lcom/android/calendar/syncer/CalDavService;)V", "syncer_release"}, k=1, mv={1, 7, 1})
  public final class b
    extends Binder
  {
    public final void a(CalDavService.c paramc, boolean paramBoolean)
    {
      r.f(paramc, "listener");
      CalDavService.a(this.a).add(new WeakReference(paramc));
      if (paramBoolean)
      {
        Iterator localIterator = CalDavService.b(this.a).iterator();
        while (localIterator.hasNext()) {
          paramc.n(((Number)localIterator.next()).longValue(), true);
        }
      }
    }
    
    public final void b(CalDavService.c paramc)
    {
      r.f(paramc, "listener");
      Iterator localIterator = CalDavService.a(this.a).iterator();
      r.e(localIterator, "refreshingStatusListeners.iterator()");
      while (localIterator.hasNext()) {
        if (r.a(paramc, (CalDavService.c)((WeakReference)localIterator.next()).get())) {
          localIterator.remove();
        }
      }
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/CalDavService$c;", "", "", "id", "", "refreshing", "Lkotlin/u;", "n", "syncer_release"}, k=1, mv={1, 7, 1})
  public static abstract interface c
  {
    public abstract void n(long paramLong, boolean paramBoolean);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.CalDavService
 * JD-Core Version:    0.7.0.1
 */