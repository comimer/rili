.class final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/TypeParameterUpperBoundEraser$erroneousErasedBound$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TypeParameterUpperBoundEraser.kt"

# interfaces
.implements Lw7/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/TypeParameterUpperBoundEraser;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/a<",
        "Lkotlin/reflect/jvm/internal/impl/types/error/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/TypeParameterUpperBoundEraser;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/TypeParameterUpperBoundEraser;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/TypeParameterUpperBoundEraser$erroneousErasedBound$2;->this$0:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/TypeParameterUpperBoundEraser;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/TypeParameterUpperBoundEraser$erroneousErasedBound$2;->invoke()Lkotlin/reflect/jvm/internal/impl/types/error/f;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlin/reflect/jvm/internal/impl/types/error/f;
    .locals 4

    .line 2
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->CANNOT_COMPUTE_ERASED_BOUND:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/TypeParameterUpperBoundEraser$erroneousErasedBound$2;->this$0:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/TypeParameterUpperBoundEraser;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/error/h;->d(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/f;

    move-result-object v0

    return-object v0
.end method
