.class final Lb1/a$b;
.super Ljava/lang/Object;
.source "BaseStrokeContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb1/m;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lb1/u;


# direct methods
.method private constructor <init>(Lb1/u;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb1/a$b;->a:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lb1/a$b;->b:Lb1/u;

    return-void
.end method

.method synthetic constructor <init>(Lb1/u;Lb1/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb1/a$b;-><init>(Lb1/u;)V

    return-void
.end method

.method static synthetic a(Lb1/a$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lb1/a$b;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
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
.end method

.method static synthetic b(Lb1/a$b;)Lb1/u;
    .locals 0

    .line 1
    iget-object p0, p0, Lb1/a$b;->b:Lb1/u;

    .line 2
    .line 3
    return-object p0
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
.end method
