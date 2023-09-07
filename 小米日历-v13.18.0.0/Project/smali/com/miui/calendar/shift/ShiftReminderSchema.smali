.class public Lcom/miui/calendar/shift/ShiftReminderSchema;
.super Ljava/lang/Object;
.source "ShiftReminderSchema.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/shift/ShiftReminderSchema$a;
    }
.end annotation


# static fields
.field private static final DEFAULT_REMINDER_MINUTES:I = 0x1c2


# instance fields
.field public reminderMinutes:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/miui/calendar/shift/ShiftReminderSchema;->type:I

    .line 6
    .line 7
    const/16 v0, 0x1c2

    .line 8
    .line 9
    iput v0, p0, Lcom/miui/calendar/shift/ShiftReminderSchema;->reminderMinutes:I

    .line 10
    .line 11
    return-void
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
