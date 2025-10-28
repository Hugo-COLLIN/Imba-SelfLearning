import { toMs } from "./helpers"
import * as df from "date-fns"

export const durationInMillisecondsAsWordHourAndMin = (
  durationInMilliseconds
) => {
  const someDate = new Date()
  const extra = durationInMilliseconds % toMs.hours(1)
  const hours = durationInMilliseconds - extra
  const extraString = df.formatDistanceStrict(
    someDate,
    df.addMilliseconds(someDate, extra),
    { unit: "minute" }
  )

  const hourString =
    hours >= toMs.hours(1)
      ? df.formatDistanceStrict(someDate, df.addMilliseconds(someDate, hours), {
          unit: "hour",
        })
      : ""

  return [hourString, extraString].join(" ")
}
