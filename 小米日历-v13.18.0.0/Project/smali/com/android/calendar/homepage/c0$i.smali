.class public abstract Lcom/android/calendar/homepage/c0$i;
.super Lcom/android/calendar/homepage/c0$k;
.source "BaseWeekView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/homepage/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "i"
.end annotation


# instance fields
.field f:F

.field g:I

.field h:Landroid/graphics/Paint$Style;

.field i:F

.field final synthetic j:Lcom/android/calendar/homepage/c0;


# direct methods
.method public constructor <init>(Lcom/android/calendar/homepage/c0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/c0$i;->j:Lcom/android/calendar/homepage/c0;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/homepage/c0$k;-><init>(Lcom/android/calendar/homepage/c0;I)V

    .line 4
    .line 5
    .line 6
    return-void
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
.end method


# virtual methods
.method protected a(Landroid/graphics/Canvas;FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$i;->j:Lcom/android/calendar/homepage/c0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/calendar/homepage/c0;->v:Landroid/graphics/Paint;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/calendar/homepage/c0$i;->g:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$i;->h:Landroid/graphics/Paint$Style;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/calendar/homepage/c0$i;->h:Landroid/graphics/Paint$Style;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$i;->j:Lcom/android/calendar/homepage/c0;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/calendar/homepage/c0;->v:Landroid/graphics/Paint;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/calendar/homepage/c0$i;->h:Landroid/graphics/Paint$Style;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$i;->h:Landroid/graphics/Paint$Style;

    .line 28
    .line 29
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 30
    .line 31
    if-ne v0, v1, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$i;->j:Lcom/android/calendar/homepage/c0;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/calendar/homepage/c0;->v:Landroid/graphics/Paint;

    .line 36
    .line 37
    iget v1, p0, Lcom/android/calendar/homepage/c0$i;->i:F

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget v0, p0, Lcom/android/calendar/homepage/c0$i;->f:F

    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/calendar/homepage/c0$i;->j:Lcom/android/calendar/homepage/c0;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/android/calendar/homepage/c0;->v:Landroid/graphics/Paint;

    .line 47
    .line 48
    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 49
    .line 50
    .line 51
    return-void
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
