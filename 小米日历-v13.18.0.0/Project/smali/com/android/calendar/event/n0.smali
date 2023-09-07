.class public final synthetic Lcom/android/calendar/event/n0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lh4/f$e;


# instance fields
.field public final synthetic a:Lcom/android/calendar/common/event/schema/AnniversaryEvent;

.field public final synthetic b:Lcom/android/calendar/event/q0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/common/event/schema/AnniversaryEvent;Lcom/android/calendar/event/q0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/n0;->a:Lcom/android/calendar/common/event/schema/AnniversaryEvent;

    iput-object p2, p0, Lcom/android/calendar/event/n0;->b:Lcom/android/calendar/event/q0;

    return-void
.end method


# virtual methods
.method public final a(Lmiuix/pickerwidget/widget/DatePicker;IIIILjava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/calendar/event/n0;->a:Lcom/android/calendar/common/event/schema/AnniversaryEvent;

    iget-object v1, p0, Lcom/android/calendar/event/n0;->b:Lcom/android/calendar/event/q0;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/android/calendar/event/q0;->Y(Lcom/android/calendar/common/event/schema/AnniversaryEvent;Lcom/android/calendar/event/q0;Lmiuix/pickerwidget/widget/DatePicker;IIIILjava/lang/String;)V

    return-void
.end method
