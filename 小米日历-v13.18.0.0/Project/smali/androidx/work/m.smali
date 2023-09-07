.class public interface abstract Landroidx/work/m;
.super Ljava/lang/Object;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/m$b;
    }
.end annotation


# static fields
.field public static final a:Landroidx/work/m$b$c;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation
.end field

.field public static final b:Landroidx/work/m$b$b;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/work/m$b$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/work/m$b$c;-><init>(Landroidx/work/m$a;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/work/m;->a:Landroidx/work/m$b$c;

    .line 8
    .line 9
    new-instance v0, Landroidx/work/m$b$b;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroidx/work/m$b$b;-><init>(Landroidx/work/m$a;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroidx/work/m;->b:Landroidx/work/m$b$b;

    .line 15
    .line 16
    return-void
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method public abstract getResult()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/m$b$c;",
            ">;"
        }
    .end annotation
.end method
