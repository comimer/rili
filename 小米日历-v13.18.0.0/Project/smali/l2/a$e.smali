.class public final Ll2/a$e;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:[J

.field private final d:[Ljava/io/File;

.field final synthetic e:Ll2/a;


# direct methods
.method private constructor <init>(Ll2/a;Ljava/lang/String;J[Ljava/io/File;[J)V
    .locals 0

    .line 2
    iput-object p1, p0, Ll2/a$e;->e:Ll2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Ll2/a$e;->a:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Ll2/a$e;->b:J

    .line 5
    iput-object p5, p0, Ll2/a$e;->d:[Ljava/io/File;

    .line 6
    iput-object p6, p0, Ll2/a$e;->c:[J

    return-void
.end method

.method synthetic constructor <init>(Ll2/a;Ljava/lang/String;J[Ljava/io/File;[JLl2/a$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Ll2/a$e;-><init>(Ll2/a;Ljava/lang/String;J[Ljava/io/File;[J)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Ll2/a$e;->d:[Ljava/io/File;

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
