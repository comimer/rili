.class public final Li8/c$a;
.super Ljava/lang/Object;
.source "LookupTracker.kt"

# interfaces
.implements Li8/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li8/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Li8/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li8/c$a;

    invoke-direct {v0}, Li8/c$a;-><init>()V

    sput-object v0, Li8/c$a;->a:Li8/c$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/incremental/components/Position;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/incremental/components/ScopeKind;Ljava/lang/String;)V
    .locals 1

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "position"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "scopeFqName"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "scopeKind"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "name"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
