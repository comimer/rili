.class public final synthetic Lcom/android/calendar/homepage/s0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/homepage/t0;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/homepage/t0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/s0;->a:Lcom/android/calendar/homepage/t0;

    iput p2, p0, Lcom/android/calendar/homepage/s0;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/homepage/s0;->a:Lcom/android/calendar/homepage/t0;

    iget v1, p0, Lcom/android/calendar/homepage/s0;->b:I

    invoke-static {v0, v1}, Lcom/android/calendar/homepage/t0;->a(Lcom/android/calendar/homepage/t0;I)V

    return-void
.end method
