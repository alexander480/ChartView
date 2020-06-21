//
//  PieChart.swift
//  SwiftUICharts
//
//  Created by Nicolas Savoini on 2020-05-24.
//

import SwiftUI

public struct PieChart: ChartType {
    public func makeChart(data: Self.Data, style: Self.Style) -> some View {
        PieChartRow(chartData: data, style: style)
    }
    public init() {}
}

struct PieChart_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PieChart().makeChart(
                data: .init([0]),
            style: styleOneColor)
            
            Group {
                PieChart().makeChart(
                    data: .init([56, 78, 53, 65, 54]),
                style: styleOneColor)
                PieChart().makeChart(
                    data: .init([56, 78, 53, 65, 54]),
                style: styleTwoColor)
                PieChart().makeChart(
                    data: .init([1, 1, 1, 1, 1, 1]),
                style: trivialPursuit)
            }.environment(\.colorScheme, .light)
            
            Group {
                PieChart().makeChart(
                    data: .init([56, 78, 53, 65, 54]),
                style: styleOneColor)
                PieChart().makeChart(
                    data: .init([56, 78, 53, 65, 54]),
                style: styleTwoColor)
                PieChart().makeChart(
                    data: .init([1, 1, 1, 1, 1, 1]),
                style: trivialPursuit)
            }.environment(\.colorScheme, .dark)
            
        }.previewLayout(.fixed(width: 250, height: 400))
    }
}

private let styleOneColor = ChartStyle(backgroundColor: .white, foregroundColor: ColorGradient.init(.pink))

private let styleTwoColor = ChartStyle(backgroundColor: ColorGradient(.black), foregroundColor: [ColorGradient(.yellow), ColorGradient(.red)])

private let trivialPursuit = ChartStyle(
    backgroundColor: .yellow,
    foregroundColor: [ColorGradient(.yellow),
                      ColorGradient(.pink),
                      ColorGradient(.green),
                      ColorGradient(.primary),
                      ColorGradient(.blue),
                      ColorGradient(.orange)])
