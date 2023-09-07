.class public Ln1/g;
.super Ljava/lang/Object;
.source "DayEmptyAgendaSet.java"

# interfaces
.implements Ln1/e;


# instance fields
.field a:Ln1/e$a;


# direct methods
.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ln1/e$a;

    .line 5
    .line 6
    invoke-direct {v0}, Ln1/e$a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ln1/g;->a:Ln1/e$a;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, Ln1/e$a;->g:Z

    .line 13
    .line 14
    iput-boolean v1, v0, Ln1/e$a;->c:Z

    .line 15
    .line 16
    iput-boolean v1, v0, Ln1/e$a;->d:Z

    .line 17
    .line 18
    iput-object p1, v0, Ln1/e$a;->e:Ljava/util/Calendar;

    .line 19
    .line 20
    return-void
    .line 21
    .line 22
.end method


# virtual methods
.method public a(Ljava/util/Calendar;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ln1/e$a;
    .locals 0

    .line 1
    iget-object p1, p0, Ln1/g;->a:Ln1/e$a;

    .line 2
    .line 3
    return-object p1
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
