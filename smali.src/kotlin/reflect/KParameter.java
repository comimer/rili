package kotlin.reflect;

import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"Lkotlin/reflect/KParameter;", "Lkotlin/reflect/b;", "", "getName", "()Ljava/lang/String;", "name", "Lkotlin/reflect/p;", "getType", "()Lkotlin/reflect/p;", "type", "Lkotlin/reflect/KParameter$Kind;", "g", "()Lkotlin/reflect/KParameter$Kind;", "kind", "", "m", "()Z", "isOptional", "a", "isVararg$annotations", "()V", "isVararg", "Kind", "kotlin-stdlib"}, k=1, mv={1, 7, 1})
public abstract interface KParameter
  extends b
{
  public abstract boolean a();
  
  public abstract Kind g();
  
  public abstract String getName();
  
  public abstract p getType();
  
  public abstract boolean m();
  
  @Metadata(d1={""}, d2={"Lkotlin/reflect/KParameter$Kind;", "", "(Ljava/lang/String;I)V", "INSTANCE", "EXTENSION_RECEIVER", "VALUE", "kotlin-stdlib"}, k=1, mv={1, 7, 1}, xi=48)
  public static enum Kind
  {
    static
    {
      EXTENSION_RECEIVER = new Kind("EXTENSION_RECEIVER", 1);
      VALUE = new Kind("VALUE", 2);
    }
    
    private Kind() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.reflect.KParameter
 * JD-Core Version:    0.7.0.1
 */