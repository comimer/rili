.class final Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsInt$1;
.super Lkotlin/jvm/internal/Lambda;
.source "modifierChecks.kt"

# interfaces
.implements Lw7/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsInt;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lw7/l<",
        "Lkotlin/reflect/jvm/internal/impl/builtins/g;",
        "Lkotlin/reflect/jvm/internal/impl/types/b0;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsInt$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsInt$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsInt$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsInt$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsInt$1;

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
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/builtins/g;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsInt$1;->invoke(Lkotlin/reflect/jvm/internal/impl/builtins/g;)Lkotlin/reflect/jvm/internal/impl/types/b0;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/reflect/jvm/internal/impl/builtins/g;)Lkotlin/reflect/jvm/internal/impl/types/b0;
    .locals 1

    const-string v0, "$this$null"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->D()Lkotlin/reflect/jvm/internal/impl/types/h0;

    move-result-object p1

    const-string v0, "intType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
