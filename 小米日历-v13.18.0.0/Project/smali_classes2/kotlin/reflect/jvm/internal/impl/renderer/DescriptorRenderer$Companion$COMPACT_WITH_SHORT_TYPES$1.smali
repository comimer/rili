.class final Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer$Companion$COMPACT_WITH_SHORT_TYPES$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DescriptorRenderer.kt"

# interfaces
.implements Lw7/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/l<",
        "Lkotlin/reflect/jvm/internal/impl/renderer/b;",
        "Lkotlin/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer$Companion$COMPACT_WITH_SHORT_TYPES$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer$Companion$COMPACT_WITH_SHORT_TYPES$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer$Companion$COMPACT_WITH_SHORT_TYPES$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer$Companion$COMPACT_WITH_SHORT_TYPES$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer$Companion$COMPACT_WITH_SHORT_TYPES$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/renderer/b;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRenderer$Companion$COMPACT_WITH_SHORT_TYPES$1;->invoke(Lkotlin/reflect/jvm/internal/impl/renderer/b;)V

    sget-object p1, Lkotlin/u;->a:Lkotlin/u;

    return-object p1
.end method

.method public final invoke(Lkotlin/reflect/jvm/internal/impl/renderer/b;)V
    .locals 1

    const-string v0, "$this$withOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lkotlin/collections/u0;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/b;->c(Ljava/util/Set;)V

    .line 3
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/renderer/a$b;->a:Lkotlin/reflect/jvm/internal/impl/renderer/a$b;

    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/b;->g(Lkotlin/reflect/jvm/internal/impl/renderer/a;)V

    .line 4
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/renderer/ParameterNameRenderingPolicy;->ONLY_NON_SYNTHESIZED:Lkotlin/reflect/jvm/internal/impl/renderer/ParameterNameRenderingPolicy;

    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/renderer/b;->d(Lkotlin/reflect/jvm/internal/impl/renderer/ParameterNameRenderingPolicy;)V

    return-void
.end method
