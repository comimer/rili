package kotlin.internal;

import kotlin.Metadata;

@Metadata(d1={""}, d2={"Lkotlin/internal/RequireKotlinVersionKind;", "", "(Ljava/lang/String;I)V", "LANGUAGE_VERSION", "COMPILER_VERSION", "API_VERSION", "kotlin-stdlib"}, k=1, mv={1, 7, 1}, xi=48)
public enum RequireKotlinVersionKind
{
  static
  {
    COMPILER_VERSION = new RequireKotlinVersionKind("COMPILER_VERSION", 1);
    API_VERSION = new RequireKotlinVersionKind("API_VERSION", 2);
  }
  
  private RequireKotlinVersionKind() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.internal.RequireKotlinVersionKind
 * JD-Core Version:    0.7.0.1
 */