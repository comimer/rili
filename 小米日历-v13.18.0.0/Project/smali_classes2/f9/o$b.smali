.class Lf9/o$b;
.super Ljava/lang/Object;
.source "TargetVelocityTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf9/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:Lj9/i;

.field b:Lf9/o$c;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lj9/i;

    invoke-direct {v0}, Lj9/i;-><init>()V

    iput-object v0, p0, Lf9/o$b;->a:Lj9/i;

    .line 3
    new-instance v0, Lf9/o$c;

    invoke-direct {v0, p0}, Lf9/o$c;-><init>(Lf9/o$b;)V

    iput-object v0, p0, Lf9/o$b;->b:Lf9/o$c;

    return-void
.end method

.method synthetic constructor <init>(Lf9/o$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lf9/o$b;-><init>()V

    return-void
.end method
