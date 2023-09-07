package com.sun.mail.util.logging;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.UndeclaredThrowableException;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.AbstractCollection;
import java.util.Comparator;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Locale;
import java.util.Properties;
import java.util.logging.ErrorManager;
import java.util.logging.Filter;
import java.util.logging.Formatter;
import java.util.logging.LogManager;
import java.util.logging.LogRecord;
import java.util.logging.Logger;
import java.util.logging.LoggingPermission;

final class LogManagerProperties
  extends Properties
{
  private static final Object LOG_MANAGER;
  private static final Method LR_GET_INSTANT;
  private static volatile String[] REFLECT_NAMES;
  private static final Method ZDT_OF_INSTANT;
  private static final Method ZI_SYSTEM_DEFAULT;
  private static final long serialVersionUID = -2239983349056806252L;
  private final String prefix;
  
  /* Error */
  static
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_0
    //   2: ldc 33
    //   4: ldc 35
    //   6: iconst_0
    //   7: anewarray 37	java/lang/Class
    //   10: invokevirtual 41	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   13: astore_1
    //   14: ldc 43
    //   16: invokestatic 47	com/sun/mail/util/logging/LogManagerProperties:findClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   19: ldc 49
    //   21: iconst_0
    //   22: anewarray 37	java/lang/Class
    //   25: invokevirtual 41	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   28: astore_2
    //   29: aload_2
    //   30: invokevirtual 55	java/lang/reflect/Method:getModifiers	()I
    //   33: invokestatic 61	java/lang/reflect/Modifier:isStatic	(I)Z
    //   36: ifeq +101 -> 137
    //   39: ldc 63
    //   41: invokestatic 47	com/sun/mail/util/logging/LogManagerProperties:findClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   44: ldc 65
    //   46: iconst_2
    //   47: anewarray 37	java/lang/Class
    //   50: dup
    //   51: iconst_0
    //   52: ldc 67
    //   54: invokestatic 47	com/sun/mail/util/logging/LogManagerProperties:findClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   57: aastore
    //   58: dup
    //   59: iconst_1
    //   60: ldc 43
    //   62: invokestatic 47	com/sun/mail/util/logging/LogManagerProperties:findClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   65: aastore
    //   66: invokevirtual 41	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   69: astore_3
    //   70: aload_3
    //   71: invokevirtual 55	java/lang/reflect/Method:getModifiers	()I
    //   74: invokestatic 61	java/lang/reflect/Modifier:isStatic	(I)Z
    //   77: ifeq +39 -> 116
    //   80: ldc 69
    //   82: aload_3
    //   83: invokevirtual 73	java/lang/reflect/Method:getReturnType	()Ljava/lang/Class;
    //   86: invokevirtual 77	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   89: ifeq +10 -> 99
    //   92: aload_1
    //   93: ifnull +215 -> 308
    //   96: goto +201 -> 297
    //   99: new 79	java/lang/NoSuchMethodException
    //   102: astore 4
    //   104: aload 4
    //   106: aload_3
    //   107: invokevirtual 83	java/lang/reflect/Method:toString	()Ljava/lang/String;
    //   110: invokespecial 87	java/lang/NoSuchMethodException:<init>	(Ljava/lang/String;)V
    //   113: aload 4
    //   115: athrow
    //   116: new 79	java/lang/NoSuchMethodException
    //   119: astore 4
    //   121: aload 4
    //   123: aload_3
    //   124: invokevirtual 83	java/lang/reflect/Method:toString	()Ljava/lang/String;
    //   127: invokespecial 87	java/lang/NoSuchMethodException:<init>	(Ljava/lang/String;)V
    //   130: aload 4
    //   132: athrow
    //   133: astore_3
    //   134: goto +77 -> 211
    //   137: new 79	java/lang/NoSuchMethodException
    //   140: astore_3
    //   141: aload_3
    //   142: aload_2
    //   143: invokevirtual 83	java/lang/reflect/Method:toString	()Ljava/lang/String;
    //   146: invokespecial 87	java/lang/NoSuchMethodException:<init>	(Ljava/lang/String;)V
    //   149: aload_3
    //   150: athrow
    //   151: astore_3
    //   152: goto +59 -> 211
    //   155: astore_3
    //   156: aconst_null
    //   157: astore 4
    //   159: goto +63 -> 222
    //   162: astore_3
    //   163: aconst_null
    //   164: astore 4
    //   166: goto +84 -> 250
    //   169: astore_3
    //   170: aconst_null
    //   171: astore 4
    //   173: goto +105 -> 278
    //   176: astore_3
    //   177: goto +34 -> 211
    //   180: astore_3
    //   181: aconst_null
    //   182: astore 4
    //   184: aload 4
    //   186: astore_2
    //   187: goto +35 -> 222
    //   190: astore_3
    //   191: aconst_null
    //   192: astore 4
    //   194: aload 4
    //   196: astore_2
    //   197: goto +53 -> 250
    //   200: astore_3
    //   201: aconst_null
    //   202: astore 4
    //   204: aload 4
    //   206: astore_2
    //   207: goto +71 -> 278
    //   210: astore_3
    //   211: aload_3
    //   212: athrow
    //   213: astore_3
    //   214: aconst_null
    //   215: astore 4
    //   217: aload 4
    //   219: astore_1
    //   220: aload_1
    //   221: astore_2
    //   222: aload_1
    //   223: ifnull +85 -> 308
    //   226: aload_2
    //   227: ifnull +81 -> 308
    //   230: aload 4
    //   232: astore_3
    //   233: aload 4
    //   235: ifnonnull +62 -> 297
    //   238: goto +70 -> 308
    //   241: astore_3
    //   242: aconst_null
    //   243: astore 4
    //   245: aload 4
    //   247: astore_1
    //   248: aload_1
    //   249: astore_2
    //   250: aload_1
    //   251: ifnull +57 -> 308
    //   254: aload_2
    //   255: ifnull +53 -> 308
    //   258: aload 4
    //   260: astore_3
    //   261: aload 4
    //   263: ifnonnull +34 -> 297
    //   266: goto +42 -> 308
    //   269: astore_3
    //   270: aconst_null
    //   271: astore 4
    //   273: aload 4
    //   275: astore_1
    //   276: aload_1
    //   277: astore_2
    //   278: aload_1
    //   279: ifnull +29 -> 308
    //   282: aload_2
    //   283: ifnull +25 -> 308
    //   286: aload 4
    //   288: astore_3
    //   289: aload 4
    //   291: ifnonnull +6 -> 297
    //   294: goto +14 -> 308
    //   297: aload_1
    //   298: astore 4
    //   300: aload_3
    //   301: astore_1
    //   302: aload 4
    //   304: astore_3
    //   305: goto +9 -> 314
    //   308: aconst_null
    //   309: astore_1
    //   310: aload_1
    //   311: astore_2
    //   312: aload_0
    //   313: astore_3
    //   314: aload_3
    //   315: putstatic 89	com/sun/mail/util/logging/LogManagerProperties:LR_GET_INSTANT	Ljava/lang/reflect/Method;
    //   318: aload_2
    //   319: putstatic 91	com/sun/mail/util/logging/LogManagerProperties:ZI_SYSTEM_DEFAULT	Ljava/lang/reflect/Method;
    //   322: aload_1
    //   323: putstatic 93	com/sun/mail/util/logging/LogManagerProperties:ZDT_OF_INSTANT	Ljava/lang/reflect/Method;
    //   326: invokestatic 97	com/sun/mail/util/logging/LogManagerProperties:loadLogManager	()Ljava/lang/Object;
    //   329: putstatic 99	com/sun/mail/util/logging/LogManagerProperties:LOG_MANAGER	Ljava/lang/Object;
    //   332: return
    //   333: astore 4
    //   335: aload_3
    //   336: astore 4
    //   338: goto -60 -> 278
    //   341: astore 4
    //   343: aload_3
    //   344: astore 4
    //   346: goto -96 -> 250
    //   349: astore 4
    //   351: aload_3
    //   352: astore 4
    //   354: goto -132 -> 222
    // Local variable table:
    //   start	length	slot	name	signature
    //   1	312	0	localObject1	Object
    //   13	310	1	localObject2	Object
    //   28	291	2	localObject3	Object
    //   69	55	3	localMethod	Method
    //   133	1	3	localObject4	Object
    //   140	10	3	localNoSuchMethodException	NoSuchMethodException
    //   151	1	3	localObject5	Object
    //   155	1	3	localLinkageError1	LinkageError
    //   162	1	3	localException1	Exception
    //   169	1	3	localRuntimeException1	RuntimeException
    //   176	1	3	localObject6	Object
    //   180	1	3	localLinkageError2	LinkageError
    //   190	1	3	localException2	Exception
    //   200	1	3	localRuntimeException2	RuntimeException
    //   210	2	3	localObject7	Object
    //   213	1	3	localLinkageError3	LinkageError
    //   232	1	3	localObject8	Object
    //   241	1	3	localException3	Exception
    //   260	1	3	localObject9	Object
    //   269	1	3	localRuntimeException3	RuntimeException
    //   288	64	3	localObject10	Object
    //   102	201	4	localObject11	Object
    //   333	1	4	localRuntimeException4	RuntimeException
    //   336	1	4	localObject12	Object
    //   341	1	4	localException4	Exception
    //   344	1	4	localObject13	Object
    //   349	1	4	localLinkageError4	LinkageError
    //   352	1	4	localObject14	Object
    // Exception table:
    //   from	to	target	type
    //   70	92	133	finally
    //   99	116	133	finally
    //   116	133	133	finally
    //   29	70	151	finally
    //   137	151	151	finally
    //   29	70	155	java/lang/LinkageError
    //   137	151	155	java/lang/LinkageError
    //   29	70	162	java/lang/Exception
    //   137	151	162	java/lang/Exception
    //   29	70	169	java/lang/RuntimeException
    //   137	151	169	java/lang/RuntimeException
    //   14	29	176	finally
    //   14	29	180	java/lang/LinkageError
    //   14	29	190	java/lang/Exception
    //   14	29	200	java/lang/RuntimeException
    //   2	14	210	finally
    //   2	14	213	java/lang/LinkageError
    //   2	14	241	java/lang/Exception
    //   2	14	269	java/lang/RuntimeException
    //   70	92	333	java/lang/RuntimeException
    //   99	116	333	java/lang/RuntimeException
    //   116	133	333	java/lang/RuntimeException
    //   70	92	341	java/lang/Exception
    //   99	116	341	java/lang/Exception
    //   116	133	341	java/lang/Exception
    //   70	92	349	java/lang/LinkageError
    //   99	116	349	java/lang/LinkageError
    //   116	133	349	java/lang/LinkageError
  }
  
  LogManagerProperties(Properties paramProperties, String paramString)
  {
    super(paramProperties);
    if ((paramProperties != null) && (paramString != null))
    {
      this.prefix = paramString;
      return;
    }
    throw null;
  }
  
  static void checkLogManagerAccess()
  {
    Object localObject = LOG_MANAGER;
    i = 0;
    int j = 0;
    int k = 0;
    m = i;
    if (localObject != null)
    {
      m = i;
      i = j;
    }
    try
    {
      try
      {
        if ((localObject instanceof LogManager))
        {
          m = 1;
          i = 1;
          k = 1;
          ((LogManager)localObject).checkAccess();
        }
      }
      catch (SecurityException localSecurityException)
      {
        if (k == 0) {
          m = k;
        } else {
          throw localSecurityException;
        }
      }
    }
    catch (LinkageError|RuntimeException localLinkageError)
    {
      for (;;)
      {
        m = i;
      }
    }
    if (m == 0) {
      checkLoggingAccess();
    }
  }
  
  private static void checkLoggingAccess()
  {
    Object localObject = Logger.getLogger("global");
    i = 0;
    j = i;
    try
    {
      if (Logger.class == localObject.getClass())
      {
        ((Logger)localObject).removeHandler(null);
        j = 1;
      }
    }
    catch (NullPointerException localNullPointerException)
    {
      for (;;)
      {
        j = i;
      }
    }
    if (j == 0)
    {
      localObject = System.getSecurityManager();
      if (localObject != null) {
        ((SecurityManager)localObject).checkPermission(new LoggingPermission("control", null));
      }
    }
  }
  
  private Properties exportCopy(Properties paramProperties)
  {
    Thread.holdsLock(this);
    paramProperties = new Properties(paramProperties);
    paramProperties.putAll(this);
    return paramProperties;
  }
  
  private static Class<?> findClass(String paramString)
    throws ClassNotFoundException
  {
    ClassLoader[] arrayOfClassLoader = getClassLoaders();
    Object localObject = arrayOfClassLoader[0];
    if (localObject != null) {
      try
      {
        localObject = Class.forName(paramString, false, (ClassLoader)localObject);
        paramString = (String)localObject;
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        paramString = tryLoad(paramString, arrayOfClassLoader[1]);
      }
    } else {
      paramString = tryLoad(paramString, arrayOfClassLoader[1]);
    }
    return paramString;
  }
  
  static String fromLogManager(String paramString)
  {
    paramString.getClass();
    Object localObject = LOG_MANAGER;
    try
    {
      if ((localObject instanceof Properties))
      {
        String str = ((Properties)localObject).getProperty(paramString);
        return str;
      }
    }
    catch (RuntimeException localRuntimeException)
    {
      label27:
      label49:
      break label27;
    }
    if (localObject != null) {}
    try
    {
      if ((localObject instanceof LogManager))
      {
        paramString = ((LogManager)localObject).getProperty(paramString);
        return paramString;
      }
    }
    catch (LinkageError|RuntimeException paramString)
    {
      break label49;
    }
    return null;
  }
  
  private static ClassLoader[] getClassLoaders()
  {
    return (ClassLoader[])AccessController.doPrivileged(new a());
  }
  
  static String getLocalHost(Object paramObject)
    throws Exception
  {
    try
    {
      Method localMethod = paramObject.getClass().getMethod("getLocalHost", new Class[0]);
      if ((!Modifier.isStatic(localMethod.getModifiers())) && (localMethod.getReturnType() == String.class)) {
        return (String)localMethod.invoke(paramObject, new Object[0]);
      }
      paramObject = new java/lang/NoSuchMethodException;
      paramObject.<init>(localMethod.toString());
      throw paramObject;
    }
    catch (InvocationTargetException paramObject)
    {
      throw paramOrError(paramObject);
    }
    catch (ExceptionInInitializerError paramObject)
    {
      throw wrapOrThrow(paramObject);
    }
  }
  
  static Comparable<?> getZonedDateTime(LogRecord paramLogRecord)
  {
    paramLogRecord.getClass();
    Object localObject = ZDT_OF_INSTANT;
    if (localObject != null) {}
    try
    {
      paramLogRecord = (Comparable)((Method)localObject).invoke(null, new Object[] { LR_GET_INSTANT.invoke(paramLogRecord, new Object[0]), ZI_SYSTEM_DEFAULT.invoke(null, new Object[0]) });
      return paramLogRecord;
    }
    catch (InvocationTargetException paramLogRecord)
    {
      localObject = paramLogRecord.getCause();
      if (!(localObject instanceof Error))
      {
        if ((localObject instanceof RuntimeException)) {
          throw ((RuntimeException)localObject);
        }
        throw new UndeclaredThrowableException(paramLogRecord);
      }
      throw ((Error)localObject);
      return null;
    }
    catch (RuntimeException|Exception paramLogRecord)
    {
      label95:
      break label95;
    }
  }
  
  static boolean hasLogManager()
  {
    Object localObject = LOG_MANAGER;
    boolean bool;
    if ((localObject != null) && (!(localObject instanceof Properties))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  static boolean isReflectionClass(String paramString)
    throws Exception
  {
    String[] arrayOfString1 = REFLECT_NAMES;
    String[] arrayOfString2 = arrayOfString1;
    if (arrayOfString1 == null)
    {
      arrayOfString2 = reflectionClassNames();
      REFLECT_NAMES = arrayOfString2;
    }
    int i = arrayOfString2.length;
    for (int j = 0; j < i; j++) {
      if (paramString.equals(arrayOfString2[j])) {
        return true;
      }
    }
    findClass(paramString);
    return false;
  }
  
  static boolean isStaticUtilityClass(String paramString)
    throws Exception
  {
    paramString = findClass(paramString);
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (paramString != Object.class)
    {
      paramString = paramString.getMethods();
      bool2 = bool1;
      if (paramString.length != 0)
      {
        int i = paramString.length;
        for (int j = 0; j < i; j++)
        {
          Object localObject = paramString[j];
          if ((localObject.getDeclaringClass() != Object.class) && (!Modifier.isStatic(localObject.getModifiers()))) {
            return bool1;
          }
        }
        bool2 = true;
      }
    }
    return bool2;
  }
  
  private static Object loadLogManager()
  {
    Properties localProperties2;
    try
    {
      LogManager localLogManager = LogManager.getLogManager();
    }
    catch (RuntimeException localRuntimeException)
    {
      Properties localProperties1 = readConfiguration();
    }
    catch (LinkageError localLinkageError)
    {
      localProperties2 = readConfiguration();
    }
    return localProperties2;
  }
  
  static Comparator<? super LogRecord> newComparator(String paramString)
    throws Exception
  {
    return (Comparator)newObjectFrom(paramString, Comparator.class);
  }
  
  static ErrorManager newErrorManager(String paramString)
    throws Exception
  {
    return (ErrorManager)newObjectFrom(paramString, ErrorManager.class);
  }
  
  static Filter newFilter(String paramString)
    throws Exception
  {
    return (Filter)newObjectFrom(paramString, Filter.class);
  }
  
  static Formatter newFormatter(String paramString)
    throws Exception
  {
    return (Formatter)newObjectFrom(paramString, Formatter.class);
  }
  
  static <T> T newObjectFrom(String paramString, Class<T> paramClass)
    throws Exception
  {
    try
    {
      paramString = findClass(paramString);
      boolean bool = paramClass.isAssignableFrom(paramString);
      if (bool) {
        try
        {
          paramString = paramClass.cast(paramString.getConstructor(new Class[0]).newInstance(new Object[0]));
          return paramString;
        }
        catch (InvocationTargetException paramString)
        {
          throw paramOrError(paramString);
        }
      }
      ClassCastException localClassCastException = new java/lang/ClassCastException;
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>();
      localStringBuilder.append(paramString.getName());
      localStringBuilder.append(" cannot be cast to ");
      localStringBuilder.append(paramClass.getName());
      localClassCastException.<init>(localStringBuilder.toString());
      throw localClassCastException;
    }
    catch (ExceptionInInitializerError paramString)
    {
      throw wrapOrThrow(paramString);
    }
    catch (NoClassDefFoundError paramString)
    {
      throw new ClassNotFoundException(paramString.toString(), paramString);
    }
  }
  
  private static Exception paramOrError(InvocationTargetException paramInvocationTargetException)
  {
    Throwable localThrowable = paramInvocationTargetException.getCause();
    if ((localThrowable != null) && ((localThrowable instanceof VirtualMachineError | localThrowable instanceof ThreadDeath))) {
      throw ((Error)localThrowable);
    }
    return paramInvocationTargetException;
  }
  
  static long parseDurationToMillis(CharSequence paramCharSequence)
    throws Exception
  {
    try
    {
      Object localObject = findClass("java.time.Duration");
      Method localMethod = ((Class)localObject).getMethod("parse", new Class[] { CharSequence.class });
      if ((((Class)localObject).isAssignableFrom(localMethod.getReturnType())) && (Modifier.isStatic(localMethod.getModifiers())))
      {
        localObject = ((Class)localObject).getMethod("toMillis", new Class[0]);
        if ((Long.TYPE.isAssignableFrom(((Method)localObject).getReturnType())) && (!Modifier.isStatic(((Method)localObject).getModifiers()))) {
          return ((Long)((Method)localObject).invoke(localMethod.invoke(null, new Object[] { paramCharSequence }), new Object[0])).longValue();
        }
        paramCharSequence = new java/lang/NoSuchMethodException;
        paramCharSequence.<init>(((Method)localObject).toString());
        throw paramCharSequence;
      }
      paramCharSequence = new java/lang/NoSuchMethodException;
      paramCharSequence.<init>(localMethod.toString());
      throw paramCharSequence;
    }
    catch (InvocationTargetException paramCharSequence)
    {
      throw paramOrError(paramCharSequence);
    }
    catch (ExceptionInInitializerError paramCharSequence)
    {
      throw wrapOrThrow(paramCharSequence);
    }
  }
  
  private Object preWrite(Object paramObject)
  {
    return get(paramObject);
  }
  
  private static Properties readConfiguration()
  {
    Properties localProperties = new Properties();
    for (;;)
    {
      try
      {
        localObject1 = System.getProperty("java.util.logging.config.file");
        if (localObject1 != null)
        {
          File localFile = new java/io/File;
          localFile.<init>((String)localObject1);
          localFile = localFile.getCanonicalFile();
          localObject1 = new java/io/FileInputStream;
          ((FileInputStream)localObject1).<init>(localFile);
        }
      }
      catch (RuntimeException|Exception|LinkageError localRuntimeException)
      {
        Object localObject1;
        continue;
      }
      try
      {
        localProperties.load((InputStream)localObject1);
        ((InputStream)localObject1).close();
      }
      finally
      {
        ((InputStream)localObject1).close();
      }
    }
  }
  
  private static String[] reflectionClassNames()
    throws Exception
  {
    try
    {
      Object localObject1 = new java/util/HashSet;
      ((HashSet)localObject1).<init>();
      int i = 0;
      Throwable localThrowable = (Throwable)Throwable.class.getConstructor(new Class[0]).newInstance(new Object[0]);
      for (localObject2 : localThrowable.getStackTrace())
      {
        if (LogManagerProperties.class.getName().equals(((StackTraceElement)localObject2).getClassName())) {
          break;
        }
        ((HashSet)localObject1).add(((StackTraceElement)localObject2).getClassName());
      }
      Throwable.class.getMethod("fillInStackTrace", new Class[0]).invoke(localThrowable, new Object[0]);
      Object localObject2 = localThrowable.getStackTrace();
      ??? = localObject2.length;
      for (??? = i; ??? < ???; ???++)
      {
        ??? = localObject2[???];
        if (LogManagerProperties.class.getName().equals(???.getClassName())) {
          break;
        }
        ((HashSet)localObject1).add(???.getClassName());
      }
      localObject1 = (String[])((AbstractCollection)localObject1).toArray(new String[((HashSet)localObject1).size()]);
      return localObject1;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      throw paramOrError(localInvocationTargetException);
    }
  }
  
  /* Error */
  static <T> Comparator<T> reverseOrder(Comparator<T> paramComparator)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 132	java/lang/Object:getClass	()Ljava/lang/Class;
    //   4: pop
    //   5: aconst_null
    //   6: astore_1
    //   7: aload_0
    //   8: invokevirtual 132	java/lang/Object:getClass	()Ljava/lang/Class;
    //   11: ldc_w 412
    //   14: iconst_0
    //   15: anewarray 37	java/lang/Class
    //   18: invokevirtual 41	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   21: astore_2
    //   22: aload_1
    //   23: astore_3
    //   24: aload_2
    //   25: invokevirtual 55	java/lang/reflect/Method:getModifiers	()I
    //   28: invokestatic 61	java/lang/reflect/Modifier:isStatic	(I)Z
    //   31: ifne +52 -> 83
    //   34: ldc_w 270
    //   37: aload_2
    //   38: invokevirtual 73	java/lang/reflect/Method:getReturnType	()Ljava/lang/Class;
    //   41: invokevirtual 77	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   44: istore 4
    //   46: aload_1
    //   47: astore_3
    //   48: iload 4
    //   50: ifeq +33 -> 83
    //   53: aload_2
    //   54: aload_0
    //   55: iconst_0
    //   56: anewarray 129	java/lang/Object
    //   59: invokevirtual 215	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   62: checkcast 270	java/util/Comparator
    //   65: astore_3
    //   66: goto +17 -> 83
    //   69: astore_3
    //   70: aload_3
    //   71: invokestatic 223	com/sun/mail/util/logging/LogManagerProperties:wrapOrThrow	(Ljava/lang/ExceptionInInitializerError;)Ljava/lang/reflect/InvocationTargetException;
    //   74: athrow
    //   75: astore_3
    //   76: aload_3
    //   77: invokestatic 219	com/sun/mail/util/logging/LogManagerProperties:paramOrError	(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Exception;
    //   80: pop
    //   81: aload_1
    //   82: astore_3
    //   83: aload_3
    //   84: astore_1
    //   85: aload_3
    //   86: ifnonnull +8 -> 94
    //   89: aload_0
    //   90: invokestatic 416	java/util/Collections:reverseOrder	(Ljava/util/Comparator;)Ljava/util/Comparator;
    //   93: astore_1
    //   94: aload_1
    //   95: areturn
    //   96: astore_3
    //   97: aload_1
    //   98: astore_3
    //   99: goto -16 -> 83
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	102	0	paramComparator	Comparator<T>
    //   6	92	1	localObject1	Object
    //   21	33	2	localMethod	Method
    //   23	43	3	localObject2	Object
    //   69	2	3	localExceptionInInitializerError	ExceptionInInitializerError
    //   75	2	3	localInvocationTargetException	InvocationTargetException
    //   82	4	3	localObject3	Object
    //   96	1	3	localNoSuchMethodException	NoSuchMethodException
    //   98	1	3	localObject4	Object
    //   44	5	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   53	66	69	java/lang/ExceptionInInitializerError
    //   7	22	75	java/lang/reflect/InvocationTargetException
    //   24	46	75	java/lang/reflect/InvocationTargetException
    //   53	66	75	java/lang/reflect/InvocationTargetException
    //   70	75	75	java/lang/reflect/InvocationTargetException
    //   7	22	96	java/lang/NoSuchMethodException
    //   7	22	96	java/lang/IllegalAccessException
    //   7	22	96	java/lang/RuntimeException
    //   24	46	96	java/lang/NoSuchMethodException
    //   24	46	96	java/lang/IllegalAccessException
    //   24	46	96	java/lang/RuntimeException
    //   53	66	96	java/lang/NoSuchMethodException
    //   53	66	96	java/lang/IllegalAccessException
    //   53	66	96	java/lang/RuntimeException
    //   70	75	96	java/lang/NoSuchMethodException
    //   70	75	96	java/lang/IllegalAccessException
    //   70	75	96	java/lang/RuntimeException
  }
  
  static String toLanguageTag(Locale paramLocale)
  {
    String str1 = paramLocale.getLanguage();
    String str2 = paramLocale.getCountry();
    String str3 = paramLocale.getVariant();
    paramLocale = new char[str1.length() + str2.length() + str3.length() + 2];
    int i = str1.length();
    str1.getChars(0, i, paramLocale, 0);
    int j;
    if (str2.length() == 0)
    {
      j = i;
      if (str1.length() != 0)
      {
        j = i;
        if (str3.length() == 0) {}
      }
    }
    else
    {
      paramLocale[i] = ((char)45);
      j = i + 1;
      str2.getChars(0, str2.length(), paramLocale, j);
      j += str2.length();
    }
    i = j;
    if (str3.length() != 0) {
      if (str1.length() == 0)
      {
        i = j;
        if (str2.length() == 0) {}
      }
      else
      {
        paramLocale[j] = ((char)45);
        j++;
        str3.getChars(0, str3.length(), paramLocale, j);
        i = j + str3.length();
      }
    }
    return String.valueOf(paramLocale, 0, i);
  }
  
  private static Class<?> tryLoad(String paramString, ClassLoader paramClassLoader)
    throws ClassNotFoundException
  {
    if (paramClassLoader != null) {
      return Class.forName(paramString, false, paramClassLoader);
    }
    return Class.forName(paramString);
  }
  
  private static InvocationTargetException wrapOrThrow(ExceptionInInitializerError paramExceptionInInitializerError)
  {
    if (!(paramExceptionInInitializerError.getCause() instanceof Error)) {
      return new InvocationTargetException(paramExceptionInInitializerError);
    }
    throw paramExceptionInInitializerError;
  }
  
  private Object writeReplace()
    throws ObjectStreamException
  {
    try
    {
      Properties localProperties = exportCopy((Properties)this.defaults.clone());
      return localProperties;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public Object clone()
  {
    try
    {
      Properties localProperties = exportCopy(this.defaults);
      return localProperties;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public boolean containsKey(Object paramObject)
  {
    try
    {
      boolean bool1 = paramObject instanceof String;
      boolean bool2 = true;
      if ((bool1) && (getProperty((String)paramObject) != null)) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      boolean bool3 = bool1;
      if (!bool1)
      {
        bool1 = bool2;
        if (!this.defaults.containsKey(paramObject))
        {
          bool1 = super.containsKey(paramObject);
          if (bool1) {
            bool1 = bool2;
          } else {
            bool1 = false;
          }
        }
        bool3 = bool1;
      }
      return bool3;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {
      return false;
    }
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof Properties)) {
      return false;
    }
    return super.equals(paramObject);
  }
  
  public Object get(Object paramObject)
  {
    try
    {
      Object localObject1;
      if ((paramObject instanceof String)) {
        localObject1 = getProperty((String)paramObject);
      } else {
        localObject1 = null;
      }
      Object localObject2 = localObject1;
      if (localObject1 == null)
      {
        localObject1 = this.defaults.get(paramObject);
        localObject2 = localObject1;
        if (localObject1 == null)
        {
          localObject2 = localObject1;
          if (!this.defaults.containsKey(paramObject)) {
            localObject2 = super.get(paramObject);
          }
        }
      }
      return localObject2;
    }
    finally {}
  }
  
  public String getProperty(String paramString)
  {
    try
    {
      Object localObject1 = this.defaults.getProperty(paramString);
      Object localObject2 = localObject1;
      if (localObject1 == null)
      {
        if (paramString.length() > 0)
        {
          localObject1 = new java/lang/StringBuilder;
          ((StringBuilder)localObject1).<init>();
          ((StringBuilder)localObject1).append(this.prefix);
          ((StringBuilder)localObject1).append('.');
          ((StringBuilder)localObject1).append(paramString);
          localObject1 = fromLogManager(((StringBuilder)localObject1).toString());
        }
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = fromLogManager(paramString);
        }
        if (localObject2 != null)
        {
          super.put(paramString, localObject2);
        }
        else
        {
          paramString = super.get(paramString);
          if ((paramString instanceof String)) {
            paramString = (String)paramString;
          } else {
            paramString = null;
          }
          localObject2 = paramString;
        }
      }
      return localObject2;
    }
    finally {}
  }
  
  public String getProperty(String paramString1, String paramString2)
  {
    paramString1 = getProperty(paramString1);
    if (paramString1 == null) {
      paramString1 = paramString2;
    }
    return paramString1;
  }
  
  public int hashCode()
  {
    return super.hashCode();
  }
  
  public Enumeration<?> propertyNames()
  {
    return super.propertyNames();
  }
  
  public Object put(Object paramObject1, Object paramObject2)
  {
    try
    {
      if (((paramObject1 instanceof String)) && ((paramObject2 instanceof String)))
      {
        Object localObject = preWrite(paramObject1);
        paramObject1 = super.put(paramObject1, paramObject2);
        if (paramObject1 == null) {
          paramObject1 = localObject;
        }
        return paramObject1;
      }
      paramObject1 = super.put(paramObject1, paramObject2);
      return paramObject1;
    }
    finally {}
  }
  
  public Object remove(Object paramObject)
  {
    try
    {
      Object localObject = preWrite(paramObject);
      paramObject = super.remove(paramObject);
      if (paramObject == null) {
        paramObject = localObject;
      }
      return paramObject;
    }
    finally
    {
      paramObject = finally;
      throw paramObject;
    }
  }
  
  public Object setProperty(String paramString1, String paramString2)
  {
    return put(paramString1, paramString2);
  }
  
  static final class a
    implements PrivilegedAction<ClassLoader[]>
  {
    public ClassLoader[] a()
    {
      ClassLoader[] arrayOfClassLoader = new ClassLoader[2];
      try
      {
        arrayOfClassLoader[0] = ClassLoader.getSystemClassLoader();
      }
      catch (SecurityException localSecurityException1)
      {
        arrayOfClassLoader[0] = null;
      }
      try
      {
        arrayOfClassLoader[1] = Thread.currentThread().getContextClassLoader();
      }
      catch (SecurityException localSecurityException2)
      {
        arrayOfClassLoader[1] = null;
      }
      return arrayOfClassLoader;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.util.logging.LogManagerProperties
 * JD-Core Version:    0.7.0.1
 */