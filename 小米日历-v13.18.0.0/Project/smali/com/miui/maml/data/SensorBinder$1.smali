.class Lcom/miui/maml/data/SensorBinder$1;
.super Ljava/lang/Object;
.source "SensorBinder.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/data/SensorBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/data/SensorBinder;


# direct methods
.method constructor <init>(Lcom/miui/maml/data/SensorBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/data/SensorBinder$1;->this$0:Lcom/miui/maml/data/SensorBinder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    iget-object v1, p0, Lcom/miui/maml/data/SensorBinder$1;->this$0:Lcom/miui/maml/data/SensorBinder;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/miui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/miui/maml/data/VariableBinder$Variable;

    .line 24
    .line 25
    check-cast v3, Lcom/miui/maml/data/SensorBinder$Variable;

    .line 26
    .line 27
    iget v4, v3, Lcom/miui/maml/data/SensorBinder$Variable;->mIndex:I

    .line 28
    .line 29
    if-ltz v4, :cond_0

    .line 30
    .line 31
    if-ge v4, v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/miui/maml/data/VariableBinder$Variable;->getNumber()D

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 38
    .line 39
    iget v7, v3, Lcom/miui/maml/data/SensorBinder$Variable;->mIndex:I

    .line 40
    .line 41
    aget v6, v6, v7

    .line 42
    .line 43
    float-to-double v6, v6

    .line 44
    sub-double/2addr v4, v6

    .line 45
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    iget-object v6, p0, Lcom/miui/maml/data/SensorBinder$1;->this$0:Lcom/miui/maml/data/SensorBinder;

    .line 50
    .line 51
    invoke-static {v6}, Lcom/miui/maml/data/SensorBinder;->access$000(Lcom/miui/maml/data/SensorBinder;)F

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    float-to-double v6, v6

    .line 56
    cmpl-double v4, v4, v6

    .line 57
    .line 58
    if-lez v4, :cond_0

    .line 59
    .line 60
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 61
    .line 62
    iget v4, v3, Lcom/miui/maml/data/SensorBinder$Variable;->mIndex:I

    .line 63
    .line 64
    aget v2, v2, v4

    .line 65
    .line 66
    float-to-double v4, v2

    .line 67
    invoke-virtual {v3, v4, v5}, Lcom/miui/maml/data/VariableBinder$Variable;->set(D)V

    .line 68
    .line 69
    .line 70
    const/4 v2, 0x1

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    if-eqz v2, :cond_2

    .line 73
    .line 74
    iget-object p1, p0, Lcom/miui/maml/data/SensorBinder$1;->this$0:Lcom/miui/maml/data/SensorBinder;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/miui/maml/data/VariableBinder;->onUpdateComplete()V

    .line 77
    .line 78
    .line 79
    :cond_2
    return-void
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
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method
