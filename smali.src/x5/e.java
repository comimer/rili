package x5;

import android.accounts.Account;
import android.content.Context;
import com.xiaomi.accountsdk.account.data.Gender;
import com.xiaomi.accountsdk.account.data.XiaomiUserCoreInfo;
import com.xiaomi.accountsdk.utils.b;
import com.xiaomi.passport.accountmanager.g;

public class e
{
  /* Error */
  public static boolean a(Context paramContext, XiaomiUserCoreInfo paramXiaomiUserCoreInfo, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_1
    //   1: getfield 18	com/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo:d	Ljava/lang/String;
    //   4: astore 4
    //   6: aload_0
    //   7: aload_2
    //   8: invokevirtual 24	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   11: astore_1
    //   12: aload 4
    //   14: ifnull +127 -> 141
    //   17: aload 4
    //   19: aload_3
    //   20: invokestatic 30	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   23: ifeq +17 -> 40
    //   26: aload_1
    //   27: invokevirtual 36	java/io/File:isFile	()Z
    //   30: ifeq +10 -> 40
    //   33: aload_1
    //   34: invokevirtual 39	java/io/File:exists	()Z
    //   37: ifne +104 -> 141
    //   40: aconst_null
    //   41: astore_1
    //   42: aload 4
    //   44: aconst_null
    //   45: aconst_null
    //   46: invokestatic 45	a6/k:i	(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)La6/k$g;
    //   49: astore_3
    //   50: aload_3
    //   51: astore_1
    //   52: goto +36 -> 88
    //   55: astore_3
    //   56: ldc 47
    //   58: ldc 49
    //   60: aload_3
    //   61: invokestatic 55	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   64: goto +24 -> 88
    //   67: astore_3
    //   68: ldc 47
    //   70: ldc 57
    //   72: aload_3
    //   73: invokestatic 55	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   76: goto +12 -> 88
    //   79: astore_3
    //   80: ldc 47
    //   82: ldc 59
    //   84: aload_3
    //   85: invokestatic 55	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   88: aload_1
    //   89: ifnull +52 -> 141
    //   92: aload_0
    //   93: aload_1
    //   94: invokevirtual 64	a6/k$g:i	()Ljava/io/InputStream;
    //   97: aload_2
    //   98: invokestatic 69	x5/c:d	(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;
    //   101: astore_0
    //   102: aload_0
    //   103: ifnull +9 -> 112
    //   106: aload_1
    //   107: invokevirtual 72	a6/k$g:h	()V
    //   110: iconst_1
    //   111: ireturn
    //   112: aload_1
    //   113: invokevirtual 72	a6/k$g:h	()V
    //   116: goto +25 -> 141
    //   119: astore_0
    //   120: goto +15 -> 135
    //   123: astore_0
    //   124: ldc 47
    //   126: ldc 74
    //   128: aload_0
    //   129: invokestatic 55	com/xiaomi/accountsdk/utils/b:h	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   132: goto -20 -> 112
    //   135: aload_1
    //   136: invokevirtual 72	a6/k$g:h	()V
    //   139: aload_0
    //   140: athrow
    //   141: iconst_0
    //   142: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	143	0	paramContext	Context
    //   0	143	1	paramXiaomiUserCoreInfo	XiaomiUserCoreInfo
    //   0	143	2	paramString1	String
    //   0	143	3	paramString2	String
    //   4	39	4	str	String
    // Exception table:
    //   from	to	target	type
    //   42	50	55	com/xiaomi/accountsdk/request/AuthenticationFailureException
    //   42	50	67	com/xiaomi/accountsdk/request/AccessDeniedException
    //   42	50	79	java/io/IOException
    //   92	102	119	finally
    //   124	132	119	finally
    //   92	102	123	java/io/IOException
  }
  
  public static void b(Context paramContext, Account paramAccount, XiaomiUserCoreInfo paramXiaomiUserCoreInfo)
  {
    if (paramAccount == null)
    {
      b.g("UserInfoSaver", "no Xiaomi account, skip to save user info");
      return;
    }
    g localg = g.z(paramContext);
    localg.u(paramAccount, "acc_user_name", paramXiaomiUserCoreInfo.b);
    localg.u(paramAccount, "acc_nick_name", paramXiaomiUserCoreInfo.c);
    localg.u(paramAccount, "acc_user_email", paramXiaomiUserCoreInfo.h);
    localg.u(paramAccount, "acc_user_phone", paramXiaomiUserCoreInfo.e);
    Object localObject1 = paramXiaomiUserCoreInfo.i;
    if (localObject1 != null) {
      localg.u(paramAccount, "acc_user_gender", ((Gender)localObject1).getType());
    }
    localg.u(paramAccount, "acc_family_count", paramXiaomiUserCoreInfo.r);
    localObject1 = localg.o(paramAccount, "acc_avatar_url");
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append("xiaomi_user_avatar_");
    ((StringBuilder)localObject2).append(paramAccount.name);
    localObject2 = ((StringBuilder)localObject2).toString();
    if (a(paramContext, paramXiaomiUserCoreInfo, (String)localObject2, (String)localObject1))
    {
      localg.u(paramAccount, "acc_avatar_url", paramXiaomiUserCoreInfo.d);
      localg.u(paramAccount, "acc_avatar_file_name", (String)localObject2);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x5.e
 * JD-Core Version:    0.7.0.1
 */