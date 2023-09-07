.class Lcom/android/calendar/event/q1$j;
.super Ljava/lang/Object;
.source "NewEditEventView.java"

# interfaces
.implements Lh4/e$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/q1;->g0(Ljava/time/ZonedDateTime;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/android/calendar/event/q1;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/q1;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/q1$j;->c:Lcom/android/calendar/event/q1;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/calendar/event/q1$j;->a:Z

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/android/calendar/event/q1$j;->b:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
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
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
.end method


# virtual methods
.method public a(Lh4/e;IJ)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/android/calendar/event/q1$j;->c:Lcom/android/calendar/event/q1;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/android/calendar/event/q1;->g(Lcom/android/calendar/event/q1;I)I

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/miui/calendar/util/r0;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/miui/calendar/util/r0;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3, p4}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/calendar/event/q1$j;->c:Lcom/android/calendar/event/q1;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->v()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->p()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->q()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->m()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->o()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    iget-boolean v6, p0, Lcom/android/calendar/event/q1$j;->a:Z

    .line 37
    .line 38
    iget-boolean v7, p0, Lcom/android/calendar/event/q1$j;->b:Z

    .line 39
    .line 40
    invoke-static/range {v0 .. v7}, Lcom/android/calendar/event/q1;->h(Lcom/android/calendar/event/q1;IIIIIZZ)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/calendar/event/q1$j;->c:Lcom/android/calendar/event/q1;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/android/calendar/event/q1;->k(Lcom/android/calendar/event/q1;)Lcom/miui/calendar/util/r0;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    const/4 p3, 0x1

    .line 50
    invoke-virtual {p2, p3}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    invoke-static {p1, v0, v1}, Lcom/android/calendar/event/q1;->j(Lcom/android/calendar/event/q1;J)J

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/calendar/event/q1$j;->c:Lcom/android/calendar/event/q1;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/android/calendar/event/q1;->n(Lcom/android/calendar/event/q1;)Lcom/miui/calendar/util/r0;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p2, p3}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 64
    .line 65
    .line 66
    move-result-wide p2

    .line 67
    invoke-static {p1, p2, p3}, Lcom/android/calendar/event/q1;->m(Lcom/android/calendar/event/q1;J)J

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/android/calendar/event/q1$j;->c:Lcom/android/calendar/event/q1;

    .line 71
    .line 72
    invoke-static {p1}, Lcom/android/calendar/event/q1;->o(Lcom/android/calendar/event/q1;)Lh4/e;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/android/calendar/event/q1$j;->c:Lcom/android/calendar/event/q1;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/android/calendar/event/q1;->p(Lcom/android/calendar/event/q1;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/android/calendar/event/q1$j;->c:Lcom/android/calendar/event/q1;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/android/calendar/event/q1;->q(Lcom/android/calendar/event/q1;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/android/calendar/event/q1$j;->c:Lcom/android/calendar/event/q1;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/android/calendar/event/q1;->s(Lcom/android/calendar/event/q1;)V

    .line 92
    .line 93
    .line 94
    return-void
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
.end method
