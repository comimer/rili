.class public Lf7/d;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf7/d$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/net/URI;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Z


# direct methods
.method private constructor <init>(Lf7/d$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lf7/d$b;->a:Ljava/net/URI;

    iput-object v0, p0, Lf7/d;->b:Ljava/net/URI;

    .line 4
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf7/d;->a:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lf7/d$b;->b:Ljava/util/Map;

    iput-object v0, p0, Lf7/d;->c:Ljava/util/Map;

    .line 6
    iget-object v0, p1, Lf7/d$b;->c:Ljava/util/Map;

    iput-object v0, p0, Lf7/d;->d:Ljava/util/Map;

    .line 7
    iget-boolean p1, p1, Lf7/d$b;->d:Z

    iput-boolean p1, p0, Lf7/d;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lf7/d$b;Lf7/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf7/d;-><init>(Lf7/d$b;)V

    return-void
.end method
