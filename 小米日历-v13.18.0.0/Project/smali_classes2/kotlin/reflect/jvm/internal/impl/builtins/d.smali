.class public final Lkotlin/reflect/jvm/internal/impl/builtins/d;
.super Lkotlin/reflect/jvm/internal/impl/builtins/g;
.source "DefaultBuiltIns.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/builtins/d$a;
    }
.end annotation


# static fields
.field public static final h:Lkotlin/reflect/jvm/internal/impl/builtins/d$a;

.field private static final i:Lkotlin/reflect/jvm/internal/impl/builtins/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/d$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/d$a;-><init>(Lkotlin/jvm/internal/o;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/d;->h:Lkotlin/reflect/jvm/internal/impl/builtins/d$a;

    .line 8
    .line 9
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/d;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-direct {v0, v2, v3, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/d;-><init>(ZILkotlin/jvm/internal/o;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/d;->i:Lkotlin/reflect/jvm/internal/impl/builtins/d;

    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    const-string v1, "DefaultBuiltIns"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/m;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->f(Z)V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/o;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/d;-><init>(Z)V

    return-void
.end method

.method public static final synthetic E0()Lkotlin/reflect/jvm/internal/impl/builtins/d;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/d;->i:Lkotlin/reflect/jvm/internal/impl/builtins/d;

    .line 2
    .line 3
    return-object v0
    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method
