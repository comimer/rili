.class public final synthetic Lz4/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/calendar/web/CalendarWebViewActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/calendar/web/CalendarWebViewActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz4/c;->a:Lcom/miui/calendar/web/CalendarWebViewActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lz4/c;->a:Lcom/miui/calendar/web/CalendarWebViewActivity;

    invoke-static {v0}, Lcom/miui/calendar/web/CalendarWebViewActivity;->Y(Lcom/miui/calendar/web/CalendarWebViewActivity;)V

    return-void
.end method
