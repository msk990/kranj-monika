import { Row, Col } from "react-bootstrap";
import { Doughnut } from "react-chartjs-2";
import { Calories } from "../../../interfaces/Calories"
import { useTranslation } from "react-i18next";

export const IngredientChart = (props:Calories) => {

  const { t, i18n } = useTranslation();
   const CHART_COLORS = {
        red: 'rgb(255, 99, 132)',
        orange: 'rgb(255, 159, 64)',
        yellow: 'rgb(255, 205, 86)',
        green: 'rgb(75, 192, 192)',
        blue: 'rgb(54, 162, 235)',
        purple: 'rgb(153, 102, 255)',
        grey: 'rgb(201, 203, 207)'
      }
    const options = {
        maintainAspectRatio: true,
        cutout:140,
        responsive: true,
        plugins: {
          legend: {
            display: false,
            // position: "bottom" as const,
            // align: "start" as const,
            // labels: {
            //   padding: 10 
            // }
          },
          title: {
            display: false,
            text: "Chart.js Horizontal Bar Chart"
          }
        }
    }

     const foodGroups = {
        labels: ['Proteins', 'Carbs', 'Sugars', 'Dietary Fiber' ,'Fat', 'Saturated Fat'],
        datasets: [
          {
            label: 'all',
            data: [props.proteins, props.pureCarbs, props.sugars, props.fiber, props.pureFat, props.saturated],
            backgroundColor: [
              CHART_COLORS.blue,
              CHART_COLORS.green,
              CHART_COLORS.red,
              CHART_COLORS.purple,
              CHART_COLORS.yellow,
              CHART_COLORS.orange,
              
            ],
            borderColor: [
                CHART_COLORS.blue,
                CHART_COLORS.green,
                CHART_COLORS.red,
                CHART_COLORS.purple,
                CHART_COLORS.yellow,
                CHART_COLORS.orange,
              
            ],
            borderWidth: 1,
          },
        ],
      };

    return(
        <>
        

<div className="w-75 p-3 m-auto" style={{ position: 'relative'}}>
           <Doughnut data={foodGroups}  
           options={options}
           />  
             <div style={{ position: 'absolute', width: '100%', top: '50%', left: 0, textAlign: 'center', marginTop: '-40px',  lineHeight: '20px'}}>
             <h2>{props.total} kcal</h2> 
            <h4>{t('common.search')} 100 g</h4> 
        </div>
        </div>
        <div className="chart-legend mt-3">

          <Row>
            <Col>
            <div className="chart-legend-box">
             <div className="chart-legend-square chart-blue me-2"></div>
            <span >{t('macroNutrients.protein')}</span>
              </div>
            </Col>
            <Col>
            <div className="chart-legend-box">
             <div className="chart-legend-square chart-green me-2"></div>
            <span >{t('macroNutrients.carbs')}</span>
              </div>
            </Col>
          </Row>
          <Row>
            <Col>
            <div className="chart-legend-box">
             <div className="chart-legend-square chart-red me-2"></div>
            <span >{t('macroNutrients.sugars')}</span>
              </div>
            </Col>
            <Col>
            <div className="chart-legend-box">
             <div className="chart-legend-square chart-purple me-2"></div>
            <span >{t('macroNutrients.dietaryFibre')}</span>
              </div>
            </Col>
          </Row>
          <Row>
            <Col>
            <div className="chart-legend-box">
             <div className="chart-legend-square chart-yellow me-2"></div>
            <span >{t('macroNutrients.fat')}</span>
              </div>
            </Col>
            <Col>
            <div className="chart-legend-box">
             <div className="chart-legend-square chart-orange me-2"></div>
            <span >{t('macroNutrients.saturated')}</span>
              </div>
            </Col>
          </Row>
        </div>
        </>
    )
}