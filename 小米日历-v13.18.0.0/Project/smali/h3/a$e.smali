.class public final Lh3/a$e;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:[Ljava/io/InputStream;

.field private final d:[J

.field final synthetic e:Lh3/a;


# direct methods
.method private constructor <init>(Lh3/a;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .locals 0

    .line 2
    iput-object p1, p0, Lh3/a$e;->e:Lh3/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lh3/a$e;->a:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lh3/a$e;->b:J

    .line 5
    iput-object p5, p0, Lh3/a$e;->c:[Ljava/io/InputStream;

    .line 6
    iput-object p6, p0, Lh3/a$e;->d:[J

    return-void
.end method

.method synthetic constructor <init>(Lh3/a;Ljava/lang/String;J[Ljava/io/InputStream;[JLh3/a$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lh3/a$e;-><init>(Lh3/a;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public c(I)Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lh3/a$e;->c:[Ljava/io/InputStream;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    return-object p1
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

.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lh3/a$e;->c:[Ljava/io/InputStream;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-static {v3}, Lh3/c;->a(Ljava/io/Closeable;)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
