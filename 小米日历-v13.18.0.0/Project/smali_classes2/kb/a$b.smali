.class public abstract Lkb/a$b;
.super Lkb/a$a;
.source "BaseTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkb/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkb/a$b$b;,
        Lkb/a$b$a;
    }
.end annotation


# static fields
.field static final h:[I


# instance fields
.field protected d:Lkb/a$b$a;

.field public e:[I

.field public f:[Ljava/lang/String;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sget v1, Ljb/d;->a:I

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput v1, v0, v2

    .line 8
    .line 9
    sget v1, Ljb/d;->d:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput v1, v0, v2

    .line 13
    .line 14
    sget v1, Ljb/d;->c:I

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput v1, v0, v2

    .line 18
    .line 19
    sget v1, Ljb/d;->b:I

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput v1, v0, v2

    .line 23
    .line 24
    sput-object v0, Lkb/a$b;->h:[I

    .line 25
    .line 26
    return-void
    .line 27
.end method

.method public constructor <init>(I[I)V
    .locals 2

    .line 1
    invoke-static {}, Lkb/a;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/2addr v0, p1

    .line 6
    invoke-direct {p0, p1, v0}, Lkb/a$a;-><init>(II)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lkb/a$b;->h:[I

    .line 10
    .line 11
    array-length v1, v0

    .line 12
    new-array v1, v1, [Ljava/lang/String;

    .line 13
    .line 14
    iput-object v1, p0, Lkb/a$b;->f:[Ljava/lang/String;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput v1, p0, Lkb/a$b;->g:I

    .line 18
    .line 19
    if-ltz p1, :cond_1

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    array-length p1, p2

    .line 24
    array-length v0, v0

    .line 25
    if-ne p1, v0, :cond_0

    .line 26
    .line 27
    iput-object p2, p0, Lkb/a$b;->e:[I

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string p2, "invalid text Ids"

    .line 33
    .line 34
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string p2, "invalid offsetPoint"

    .line 41
    .line 42
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
.end method


# virtual methods
.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkb/a$b;->d:Lkb/a$b$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lkb/a$b$a;->a(Lkb/a$b;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
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

.method public m(ILjava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lkb/a$b;->h:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    if-ge p1, v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lkb/a$b;->d:Lkb/a$b$a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p0, p1, p2}, Lkb/a$b$a;->b(Lkb/a$b;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string p2, "invalid index"

    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
.end method
