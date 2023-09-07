package com.android.ex.chips;

import android.accounts.Account;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.graphics.drawable.StateListDrawable;
import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.ContactsContract.Contacts;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CursorAdapter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class q
  extends CursorAdapter
{
  private static final Map<String, String> g = new HashMap();
  private final long a;
  private int b = -1;
  private a c;
  private final Long d;
  private DropdownChipLayouter e;
  private final StateListDrawable f;
  
  public q(Context paramContext, long paramLong1, Long paramLong, String paramString, long paramLong2, int paramInt, a parama, DropdownChipLayouter paramDropdownChipLayouter, StateListDrawable paramStateListDrawable, c.a parama1)
  {
    super(paramContext, c(paramContext, paramLong1, paramLong, paramString, paramInt, parama1), 0);
    this.a = paramLong2;
    this.d = paramLong;
    this.c = parama;
    this.e = paramDropdownChipLayouter;
    this.f = paramStateListDrawable;
  }
  
  private static Cursor a(CharSequence paramCharSequence, int paramInt, Long paramLong, Account paramAccount, Context paramContext, h.c paramc, c.a parama)
  {
    if (!c.b(paramContext, parama))
    {
      if (Log.isLoggable("RecipAlternates", 3)) {
        Log.d("RecipAlternates", "Not doing query because we don't have required permissions.");
      }
      return null;
    }
    paramCharSequence = paramc.a().buildUpon().appendPath(paramCharSequence.toString()).appendQueryParameter("limit", String.valueOf(paramInt + 5));
    if (paramLong != null) {
      paramCharSequence.appendQueryParameter("directory", String.valueOf(paramLong));
    }
    if (paramAccount != null)
    {
      paramCharSequence.appendQueryParameter("name_for_primary_account", paramAccount.name);
      paramCharSequence.appendQueryParameter("type_for_primary_account", paramAccount.type);
    }
    return paramContext.getContentResolver().query(paramCharSequence.build(), paramc.c(), null, null, null);
  }
  
  static r b(r paramr1, r paramr2)
  {
    if (paramr2 == null) {
      return paramr1;
    }
    if (paramr1 == null) {
      return paramr2;
    }
    if ((!TextUtils.isEmpty(paramr1.m())) && (TextUtils.isEmpty(paramr2.m()))) {
      return paramr1;
    }
    if ((!TextUtils.isEmpty(paramr2.m())) && (TextUtils.isEmpty(paramr1.m()))) {
      return paramr2;
    }
    if ((!TextUtils.equals(paramr1.m(), paramr1.i())) && (TextUtils.equals(paramr2.m(), paramr2.i()))) {
      return paramr1;
    }
    if ((!TextUtils.equals(paramr2.m(), paramr2.i())) && (TextUtils.equals(paramr1.m(), paramr1.i()))) {
      return paramr2;
    }
    if (((paramr1.t() != null) || (paramr1.s() != null)) && (paramr2.t() == null) && (paramr2.s() == null)) {
      return paramr1;
    }
    if (((paramr2.t() != null) || (paramr2.s() != null)) && (paramr1.t() == null)) {
      paramr1.s();
    }
    return paramr2;
  }
  
  private static Cursor c(Context paramContext, long paramLong, Long paramLong1, String paramString, int paramInt, c.a parama)
  {
    String str = null;
    String[] arrayOfString;
    if (paramInt == 0)
    {
      localObject = h.b;
      arrayOfString = ((h.c)localObject).c();
      if ((paramLong1 != null) && (paramString != null))
      {
        paramLong1 = ContactsContract.Contacts.getLookupUri(paramLong, paramString).buildUpon().appendPath("entities").appendQueryParameter("directory", String.valueOf(paramLong1)).build();
        str = "vnd.android.cursor.item/email_v2";
      }
      else
      {
        paramLong1 = ((h.c)localObject).b();
      }
    }
    else
    {
      localObject = h.a;
      arrayOfString = ((h.c)localObject).c();
      if ((paramLong1 != null) && (paramString != null))
      {
        paramLong1 = ContactsContract.Contacts.getLookupUri(paramLong, paramString).buildUpon().appendPath("entities").appendQueryParameter("directory", String.valueOf(paramLong1)).build();
        str = "vnd.android.cursor.item/phone_v2";
      }
      else
      {
        paramLong1 = ((h.c)localObject).b();
      }
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append(arrayOfString[4]);
    ((StringBuilder)localObject).append(" = ?");
    localObject = ((StringBuilder)localObject).toString();
    if (c.b(paramContext, parama)) {
      paramContext = paramContext.getContentResolver().query(paramLong1, arrayOfString, (String)localObject, new String[] { String.valueOf(paramLong) }, null);
    } else {
      paramContext = new MatrixCursor(arrayOfString);
    }
    if (paramContext != null)
    {
      paramLong1 = j(paramContext, str, paramString);
      paramContext.close();
      return paramLong1;
    }
    return paramContext;
  }
  
  /* Error */
  public static void d(Context paramContext, b paramb, ArrayList<String> paramArrayList, int paramInt, Account paramAccount, b paramb1, c.a parama)
  {
    // Byte code:
    //   0: iload_3
    //   1: ifne +11 -> 12
    //   4: getstatic 173	com/android/ex/chips/h:b	Lcom/android/ex/chips/h$c;
    //   7: astore 7
    //   9: goto +8 -> 17
    //   12: getstatic 187	com/android/ex/chips/h:a	Lcom/android/ex/chips/h$c;
    //   15: astore 7
    //   17: bipush 50
    //   19: aload_2
    //   20: invokevirtual 223	java/util/ArrayList:size	()I
    //   23: invokestatic 229	java/lang/Math:min	(II)I
    //   26: istore 8
    //   28: new 231	java/util/HashSet
    //   31: dup
    //   32: invokespecial 232	java/util/HashSet:<init>	()V
    //   35: astore 9
    //   37: new 191	java/lang/StringBuilder
    //   40: dup
    //   41: invokespecial 192	java/lang/StringBuilder:<init>	()V
    //   44: astore 10
    //   46: iconst_0
    //   47: istore_3
    //   48: iload_3
    //   49: iload 8
    //   51: if_icmpge +87 -> 138
    //   54: aload_2
    //   55: iload_3
    //   56: invokevirtual 236	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   59: checkcast 98	java/lang/String
    //   62: invokevirtual 239	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   65: invokestatic 245	android/text/util/Rfc822Tokenizer:tokenize	(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;
    //   68: astore 11
    //   70: aload 11
    //   72: arraylength
    //   73: ifle +15 -> 88
    //   76: aload 11
    //   78: iconst_0
    //   79: aaload
    //   80: invokevirtual 250	android/text/util/Rfc822Token:getAddress	()Ljava/lang/String;
    //   83: astore 11
    //   85: goto +13 -> 98
    //   88: aload_2
    //   89: iload_3
    //   90: invokevirtual 236	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   93: checkcast 98	java/lang/String
    //   96: astore 11
    //   98: aload 9
    //   100: aload 11
    //   102: invokevirtual 254	java/util/HashSet:add	(Ljava/lang/Object;)Z
    //   105: pop
    //   106: aload 10
    //   108: ldc_w 256
    //   111: invokevirtual 196	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: pop
    //   115: iload_3
    //   116: iload 8
    //   118: iconst_1
    //   119: isub
    //   120: if_icmpge +12 -> 132
    //   123: aload 10
    //   125: ldc_w 258
    //   128: invokevirtual 196	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: pop
    //   132: iinc 3 1
    //   135: goto -87 -> 48
    //   138: ldc 60
    //   140: iconst_3
    //   141: invokestatic 66	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   144: ifeq +39 -> 183
    //   147: new 191	java/lang/StringBuilder
    //   150: dup
    //   151: invokespecial 192	java/lang/StringBuilder:<init>	()V
    //   154: astore_2
    //   155: aload_2
    //   156: ldc_w 260
    //   159: invokevirtual 196	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: pop
    //   163: aload_2
    //   164: aload 9
    //   166: invokevirtual 263	java/lang/Object:toString	()Ljava/lang/String;
    //   169: invokevirtual 196	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   172: pop
    //   173: ldc 60
    //   175: aload_2
    //   176: invokevirtual 199	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   179: invokestatic 71	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   182: pop
    //   183: aload 9
    //   185: invokevirtual 264	java/util/HashSet:size	()I
    //   188: anewarray 98	java/lang/String
    //   191: astore 12
    //   193: aload 9
    //   195: aload 12
    //   197: invokevirtual 270	java/util/AbstractCollection:toArray	([Ljava/lang/Object;)[Ljava/lang/Object;
    //   200: pop
    //   201: aconst_null
    //   202: astore_2
    //   203: aload_0
    //   204: aload 6
    //   206: invokestatic 58	com/android/ex/chips/c:b	(Landroid/content/Context;Lcom/android/ex/chips/c$a;)Z
    //   209: ifeq +100 -> 309
    //   212: aload_0
    //   213: invokevirtual 130	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   216: astore 13
    //   218: aload 7
    //   220: invokevirtual 185	com/android/ex/chips/h$c:b	()Landroid/net/Uri;
    //   223: astore 14
    //   225: aload 7
    //   227: invokevirtual 136	com/android/ex/chips/h$c:c	()[Ljava/lang/String;
    //   230: astore 11
    //   232: new 191	java/lang/StringBuilder
    //   235: astore 15
    //   237: aload 15
    //   239: invokespecial 192	java/lang/StringBuilder:<init>	()V
    //   242: aload 15
    //   244: aload 7
    //   246: invokevirtual 136	com/android/ex/chips/h$c:c	()[Ljava/lang/String;
    //   249: iconst_1
    //   250: aaload
    //   251: invokevirtual 196	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   254: pop
    //   255: aload 15
    //   257: ldc_w 272
    //   260: invokevirtual 196	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   263: pop
    //   264: aload 15
    //   266: aload 10
    //   268: invokevirtual 199	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   271: invokevirtual 196	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   274: pop
    //   275: aload 15
    //   277: ldc_w 274
    //   280: invokevirtual 196	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   283: pop
    //   284: aload 13
    //   286: aload 14
    //   288: aload 11
    //   290: aload 15
    //   292: invokevirtual 199	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   295: aload 12
    //   297: aconst_null
    //   298: invokevirtual 142	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   301: astore 11
    //   303: aload 11
    //   305: astore_2
    //   306: goto +5 -> 311
    //   309: aconst_null
    //   310: astore_2
    //   311: aload_2
    //   312: aconst_null
    //   313: invokestatic 277	com/android/ex/chips/q:i	(Landroid/database/Cursor;Ljava/lang/Long;)Ljava/util/HashMap;
    //   316: astore 11
    //   318: aload 5
    //   320: aload 11
    //   322: invokeinterface 280 2 0
    //   327: aload_2
    //   328: ifnull +9 -> 337
    //   331: aload_2
    //   332: invokeinterface 216 1 0
    //   337: new 231	java/util/HashSet
    //   340: dup
    //   341: invokespecial 232	java/util/HashSet:<init>	()V
    //   344: astore_2
    //   345: aload_0
    //   346: aload 11
    //   348: aload 9
    //   350: aload 4
    //   352: aload_2
    //   353: aload 7
    //   355: aload 5
    //   357: aload 6
    //   359: invokestatic 283	com/android/ex/chips/q:f	(Landroid/content/Context;Ljava/util/Map;Ljava/util/Set;Landroid/accounts/Account;Ljava/util/Set;Lcom/android/ex/chips/h$c;Lcom/android/ex/chips/q$b;Lcom/android/ex/chips/c$a;)V
    //   362: aload_1
    //   363: aload_2
    //   364: aload 5
    //   366: invokestatic 286	com/android/ex/chips/q:g	(Lcom/android/ex/chips/b;Ljava/util/Set;Lcom/android/ex/chips/q$b;)V
    //   369: return
    //   370: astore_0
    //   371: goto +4 -> 375
    //   374: astore_0
    //   375: aload_2
    //   376: ifnull +9 -> 385
    //   379: aload_2
    //   380: invokeinterface 216 1 0
    //   385: aload_0
    //   386: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	387	0	paramContext	Context
    //   0	387	1	paramb	b
    //   0	387	2	paramArrayList	ArrayList<String>
    //   0	387	3	paramInt	int
    //   0	387	4	paramAccount	Account
    //   0	387	5	paramb1	b
    //   0	387	6	parama	c.a
    //   7	347	7	localc	h.c
    //   26	94	8	i	int
    //   35	314	9	localHashSet	HashSet
    //   44	223	10	localStringBuilder1	StringBuilder
    //   68	279	11	localObject	Object
    //   191	105	12	arrayOfString	String[]
    //   216	69	13	localContentResolver	ContentResolver
    //   223	64	14	localUri	Uri
    //   235	56	15	localStringBuilder2	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   311	327	370	finally
    //   203	303	374	finally
  }
  
  public static void e(Context paramContext, b paramb, ArrayList<String> paramArrayList, Account paramAccount, b paramb1, c.a parama)
  {
    d(paramContext, paramb, paramArrayList, 0, paramAccount, paramb1, parama);
  }
  
  /* Error */
  private static void f(Context paramContext, Map<String, r> paramMap, Set<String> paramSet1, Account paramAccount, Set<String> paramSet2, h.c paramc, b paramb, c.a parama)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokeinterface 295 1 0
    //   6: aload_2
    //   7: invokeinterface 298 1 0
    //   12: if_icmpge +373 -> 385
    //   15: new 231	java/util/HashSet
    //   18: dup
    //   19: invokespecial 232	java/util/HashSet:<init>	()V
    //   22: astore 8
    //   24: aload_2
    //   25: invokeinterface 302 1 0
    //   30: astore_2
    //   31: aload_2
    //   32: invokeinterface 308 1 0
    //   37: ifeq +36 -> 73
    //   40: aload_2
    //   41: invokeinterface 312 1 0
    //   46: checkcast 98	java/lang/String
    //   49: astore 9
    //   51: aload_1
    //   52: aload 9
    //   54: invokeinterface 315 2 0
    //   59: ifne -28 -> 31
    //   62: aload 8
    //   64: aload 9
    //   66: invokevirtual 254	java/util/HashSet:add	(Ljava/lang/Object;)Z
    //   69: pop
    //   70: goto -39 -> 31
    //   73: aload 4
    //   75: aload 8
    //   77: invokeinterface 319 2 0
    //   82: pop
    //   83: aconst_null
    //   84: astore_1
    //   85: aload_0
    //   86: aload 7
    //   88: invokestatic 58	com/android/ex/chips/c:b	(Landroid/content/Context;Lcom/android/ex/chips/c$a;)Z
    //   91: ifeq +25 -> 116
    //   94: aload_0
    //   95: invokevirtual 130	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   98: getstatic 324	com/android/ex/chips/b$f:a	Landroid/net/Uri;
    //   101: getstatic 327	com/android/ex/chips/b$f:b	[Ljava/lang/String;
    //   104: aconst_null
    //   105: aconst_null
    //   106: aconst_null
    //   107: invokevirtual 142	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   110: astore_2
    //   111: aload_2
    //   112: astore_1
    //   113: goto +5 -> 118
    //   116: aconst_null
    //   117: astore_1
    //   118: aload_1
    //   119: ifnonnull +14 -> 133
    //   122: aload_1
    //   123: ifnull +9 -> 132
    //   126: aload_1
    //   127: invokeinterface 216 1 0
    //   132: return
    //   133: aload_0
    //   134: aload_1
    //   135: aload_3
    //   136: invokestatic 332	com/android/ex/chips/b:J	(Landroid/content/Context;Landroid/database/Cursor;Landroid/accounts/Account;)Ljava/util/List;
    //   139: astore 9
    //   141: aload_1
    //   142: invokeinterface 216 1 0
    //   147: aload 9
    //   149: ifnull +236 -> 385
    //   152: aload 8
    //   154: invokevirtual 333	java/util/HashSet:iterator	()Ljava/util/Iterator;
    //   157: astore 8
    //   159: aconst_null
    //   160: astore_1
    //   161: aload 8
    //   163: invokeinterface 308 1 0
    //   168: ifeq +217 -> 385
    //   171: aload 8
    //   173: invokeinterface 312 1 0
    //   178: checkcast 98	java/lang/String
    //   181: astore 10
    //   183: iconst_0
    //   184: istore 11
    //   186: iload 11
    //   188: aload 9
    //   190: invokeinterface 336 1 0
    //   195: if_icmpge +170 -> 365
    //   198: aload 9
    //   200: iload 11
    //   202: invokeinterface 337 2 0
    //   207: checkcast 339	com/android/ex/chips/b$g
    //   210: getfield 340	com/android/ex/chips/b$g:a	J
    //   213: lstore 12
    //   215: aload 10
    //   217: iconst_1
    //   218: lload 12
    //   220: invokestatic 345	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   223: aload_3
    //   224: aload_0
    //   225: aload 5
    //   227: aload 7
    //   229: invokestatic 347	com/android/ex/chips/q:a	(Ljava/lang/CharSequence;ILjava/lang/Long;Landroid/accounts/Account;Landroid/content/Context;Lcom/android/ex/chips/h$c;Lcom/android/ex/chips/c$a;)Landroid/database/Cursor;
    //   232: astore_2
    //   233: aload_2
    //   234: ifnull +98 -> 332
    //   237: aload_2
    //   238: astore_1
    //   239: aload_2
    //   240: invokeinterface 350 1 0
    //   245: ifeq +87 -> 332
    //   248: aload_2
    //   249: astore_1
    //   250: aload_2
    //   251: lload 12
    //   253: invokestatic 345	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   256: invokestatic 277	com/android/ex/chips/q:i	(Landroid/database/Cursor;Ljava/lang/Long;)Ljava/util/HashMap;
    //   259: astore 14
    //   261: aload_2
    //   262: astore_1
    //   263: aload 14
    //   265: invokeinterface 354 1 0
    //   270: invokeinterface 302 1 0
    //   275: astore 10
    //   277: aload_2
    //   278: astore_1
    //   279: aload 10
    //   281: invokeinterface 308 1 0
    //   286: ifeq +26 -> 312
    //   289: aload_2
    //   290: astore_1
    //   291: aload 4
    //   293: aload 10
    //   295: invokeinterface 312 1 0
    //   300: checkcast 98	java/lang/String
    //   303: invokeinterface 357 2 0
    //   308: pop
    //   309: goto -32 -> 277
    //   312: aload_2
    //   313: astore_1
    //   314: aload 6
    //   316: aload 14
    //   318: invokeinterface 280 2 0
    //   323: aload_2
    //   324: invokeinterface 216 1 0
    //   329: goto -170 -> 159
    //   332: aload_2
    //   333: astore_1
    //   334: aload_2
    //   335: ifnull +11 -> 346
    //   338: aload_2
    //   339: invokeinterface 216 1 0
    //   344: aconst_null
    //   345: astore_1
    //   346: iinc 11 1
    //   349: goto -163 -> 186
    //   352: astore_0
    //   353: aload_1
    //   354: ifnull +9 -> 363
    //   357: aload_1
    //   358: invokeinterface 216 1 0
    //   363: aload_0
    //   364: athrow
    //   365: goto -204 -> 161
    //   368: astore_0
    //   369: goto +4 -> 373
    //   372: astore_0
    //   373: aload_1
    //   374: ifnull +9 -> 383
    //   377: aload_1
    //   378: invokeinterface 216 1 0
    //   383: aload_0
    //   384: athrow
    //   385: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	386	0	paramContext	Context
    //   0	386	1	paramMap	Map<String, r>
    //   0	386	2	paramSet1	Set<String>
    //   0	386	3	paramAccount	Account
    //   0	386	4	paramSet2	Set<String>
    //   0	386	5	paramc	h.c
    //   0	386	6	paramb	b
    //   0	386	7	parama	c.a
    //   22	150	8	localObject1	Object
    //   49	150	9	localObject2	Object
    //   181	113	10	localObject3	Object
    //   184	163	11	i	int
    //   213	39	12	l	long
    //   259	58	14	localHashMap	HashMap
    // Exception table:
    //   from	to	target	type
    //   215	233	352	finally
    //   239	248	352	finally
    //   250	261	352	finally
    //   263	277	352	finally
    //   279	289	352	finally
    //   291	309	352	finally
    //   314	323	352	finally
    //   133	141	368	finally
    //   85	111	372	finally
  }
  
  public static void g(b paramb, Set<String> paramSet, b paramb1)
  {
    if (paramb != null)
    {
      paramb = paramb.A(paramSet);
      if ((paramb != null) && (paramb.size() > 0))
      {
        paramb1.b(paramb);
        paramb = paramb.keySet().iterator();
        while (paramb.hasNext()) {
          paramSet.remove((String)paramb.next());
        }
      }
    }
    paramb1.a(paramSet);
  }
  
  private static HashMap<String, r> i(Cursor paramCursor, Long paramLong)
  {
    HashMap localHashMap = new HashMap();
    if ((paramCursor != null) && (paramCursor.moveToFirst())) {
      do
      {
        String str = paramCursor.getString(1);
        Object localObject = r.f(paramCursor.getString(0), paramCursor.getInt(7), paramCursor.getString(1), paramCursor.getInt(2), paramCursor.getString(3), paramCursor.getLong(4), paramLong, paramCursor.getLong(5), paramCursor.getString(6), true, paramCursor.getString(8));
        localHashMap.put(str, b((r)localHashMap.get(str), (r)localObject));
        if (Log.isLoggable("RecipAlternates", 3))
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("Received reverse look up information for ");
          ((StringBuilder)localObject).append(str);
          ((StringBuilder)localObject).append(" RESULTS:  NAME : ");
          ((StringBuilder)localObject).append(paramCursor.getString(0));
          ((StringBuilder)localObject).append(" CONTACT ID : ");
          ((StringBuilder)localObject).append(paramCursor.getLong(4));
          ((StringBuilder)localObject).append(" ADDRESS :");
          ((StringBuilder)localObject).append(paramCursor.getString(1));
          Log.d("RecipAlternates", ((StringBuilder)localObject).toString());
        }
      } while (paramCursor.moveToNext());
    }
    return localHashMap;
  }
  
  static Cursor j(Cursor paramCursor, String paramString1, String paramString2)
  {
    MatrixCursor localMatrixCursor = new MatrixCursor(paramCursor.getColumnNames(), paramCursor.getCount());
    HashSet localHashSet = new HashSet();
    paramCursor.moveToPosition(-1);
    do
    {
      boolean bool = paramCursor.moveToNext();
      str1 = null;
      if (!bool) {
        break;
      }
    } while (!"vnd.android.cursor.item/name".equals(paramCursor.getString(9)));
    String str1 = paramCursor.getString(0);
    String str2 = paramCursor.getString(6);
    int i = paramCursor.getInt(7);
    break label108;
    str2 = null;
    i = 0;
    label108:
    paramCursor.moveToPosition(-1);
    while (paramCursor.moveToNext()) {
      if ((paramString1 == null) || (paramString1.equals(paramCursor.getString(9))))
      {
        String str3 = paramCursor.getString(1);
        if (!localHashSet.contains(str3))
        {
          localHashSet.add(str3);
          Object[] arrayOfObject = new Object[10];
          arrayOfObject[0] = paramCursor.getString(0);
          arrayOfObject[1] = paramCursor.getString(1);
          arrayOfObject[2] = Integer.valueOf(paramCursor.getInt(2));
          arrayOfObject[3] = paramCursor.getString(3);
          arrayOfObject[4] = Long.valueOf(paramCursor.getLong(4));
          arrayOfObject[5] = Long.valueOf(paramCursor.getLong(5));
          arrayOfObject[6] = paramCursor.getString(6);
          arrayOfObject[7] = Integer.valueOf(paramCursor.getInt(7));
          arrayOfObject[8] = paramCursor.getString(8);
          arrayOfObject[9] = paramCursor.getString(9);
          if (arrayOfObject[0] == null) {
            arrayOfObject[0] = str1;
          }
          if (arrayOfObject[6] == null) {
            arrayOfObject[6] = str2;
          }
          if (((Integer)arrayOfObject[7]).intValue() == 0) {
            arrayOfObject[7] = Integer.valueOf(i);
          }
          if (arrayOfObject[8] == null) {
            arrayOfObject[8] = paramString2;
          }
          str3 = (String)arrayOfObject[6];
          if (str3 != null)
          {
            Object localObject = g;
            if (((Map)localObject).containsKey(str3))
            {
              arrayOfObject[6] = ((Map)localObject).get(str3);
            }
            else if (str3.indexOf('?') != str3.lastIndexOf('?'))
            {
              String[] arrayOfString = str3.split("\\?");
              localObject = new StringBuilder();
              for (int j = 0; j < arrayOfString.length; j++)
              {
                if (j == 1) {
                  ((StringBuilder)localObject).append("?");
                } else if (j > 1) {
                  ((StringBuilder)localObject).append("&");
                }
                ((StringBuilder)localObject).append(arrayOfString[j]);
              }
              localObject = ((StringBuilder)localObject).toString();
              g.put(str3, localObject);
              arrayOfObject[6] = localObject;
            }
          }
          localMatrixCursor.addRow(arrayOfObject);
        }
      }
    }
    return localMatrixCursor;
  }
  
  public void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    int i = paramCursor.getPosition();
    paramContext = h(i);
    this.e.i(paramView, null, paramContext, i, DropdownChipLayouter.AdapterType.RECIPIENT_ALTERNATES, null, this.f);
  }
  
  public long getItemId(int paramInt)
  {
    Cursor localCursor = getCursor();
    if (localCursor.moveToPosition(paramInt)) {
      localCursor.getLong(5);
    }
    return -1L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Cursor localCursor = getCursor();
    localCursor.moveToPosition(paramInt);
    paramViewGroup = paramView;
    if (paramView == null) {
      paramViewGroup = this.e.y(DropdownChipLayouter.AdapterType.RECIPIENT_ALTERNATES);
    }
    if (localCursor.getLong(5) == this.a)
    {
      this.b = paramInt;
      paramView = this.c;
      if (paramView != null) {
        paramView.b(paramInt);
      }
    }
    bindView(paramViewGroup, paramViewGroup.getContext(), localCursor);
    return paramViewGroup;
  }
  
  public r h(int paramInt)
  {
    Cursor localCursor = getCursor();
    localCursor.moveToPosition(paramInt);
    return r.f(localCursor.getString(0), localCursor.getInt(7), localCursor.getString(1), localCursor.getInt(2), localCursor.getString(3), localCursor.getLong(4), this.d, localCursor.getLong(5), localCursor.getString(6), true, localCursor.getString(8));
  }
  
  public View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return this.e.y(DropdownChipLayouter.AdapterType.RECIPIENT_ALTERNATES);
  }
  
  static abstract interface a
  {
    public abstract void b(int paramInt);
  }
  
  public static abstract interface b
  {
    public abstract void a(Set<String> paramSet);
    
    public abstract void b(Map<String, r> paramMap);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.ex.chips.q
 * JD-Core Version:    0.7.0.1
 */