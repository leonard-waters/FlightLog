defmodule Flightlog.Math do
    def greatCircle(a,b) do
        lat1 = elem(a, 0)
        lon1 = elem(a, 1)
        lat2 = elem(b, 0)
        lon2 = elem(b, 1)

        rlat1 = :math.pi * lat1 / 180.0
        rlat2 = :math.pi * lat2 / 180.0
        theta = lon1 - lon2
        rtheta = :math.pi * theta / 180.0

        degDistance = :math.acos(:math.sin(rlat1) * :math.sin(rlat2) +
                                 :math.cos(rlat1) * :math.cos(rlat2) * :math.cos(rtheta))

        earthRadius = 6371.0

        degDistance * earthRadius
    end

    def flightTime(earlier, later) do
        hours = Timex.diff(later, earlier, :hours)
        minutes = rem(Timex.diff(later, earlier, :minutes), 60)
        "#{hours}:#{minutes}"
    end

end