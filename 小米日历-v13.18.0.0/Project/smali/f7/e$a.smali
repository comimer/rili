.class public Lf7/e$a;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf7/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lf7/e$a;->f:J

    return-void
.end method

.method public constructor <init>(Lf7/e;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lf7/e$a;->f:J

    .line 5
    iget v0, p1, Lf7/e;->a:I

    iput v0, p0, Lf7/e$a;->b:I

    .line 6
    iget-object v0, p1, Lf7/e;->b:Ljava/lang/String;

    iput-object v0, p0, Lf7/e$a;->c:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Lf7/e;->c:Ljava/util/Map;

    iput-object v0, p0, Lf7/e$a;->a:Ljava/util/Map;

    .line 8
    iget-object v0, p1, Lf7/e;->d:Ljava/lang/String;

    iput-object v0, p0, Lf7/e$a;->d:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lf7/e;->e:Ljava/lang/String;

    iput-object v0, p0, Lf7/e$a;->e:Ljava/lang/String;

    .line 10
    iget-wide v0, p1, Lf7/e;->f:J

    iput-wide v0, p0, Lf7/e$a;->f:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lf7/e$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lf7/e$a;->c:Ljava/lang/String;

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

.method public b()Lf7/e;
    .locals 1

    .line 1
    new-instance v0, Lf7/e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lf7/e;-><init>(Lf7/e$a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
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

.method public c(I)Lf7/e$a;
    .locals 0

    .line 1
    iput p1, p0, Lf7/e$a;->b:I

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

.method public d(Ljava/util/Map;)Lf7/e$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lf7/e$a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lf7/e$a;->a:Ljava/util/Map;

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

.method public e(Ljava/lang/String;)Lf7/e$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lf7/e$a;->e:Ljava/lang/String;

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

.method public f(Ljava/lang/String;)Lf7/e$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lf7/e$a;->d:Ljava/lang/String;

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

.method public g(J)Lf7/e$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lf7/e$a;->f:J

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
