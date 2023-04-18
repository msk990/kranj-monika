import { useState } from "react"
import { Ingredient } from "../../../interfaces/Food"
import { ListGroup } from "react-bootstrap"
import { FoodIngredient } from "../food-ingredient/FoodIngredient"
import { useTranslation } from "react-i18next"

export const FoodIngredients = (props:any) => {
    const { t, i18n } = useTranslation();
    const ingz = props.ings

    const [show, setShow] = useState(false)
    const [addIt, setAddIt] = useState(false)

    const handleAddIng = () => {
        setShow(true)
        setAddIt(false)
      //  setShow(false)
      

    }

   // let ingz:Ingredient[] = useAppSelector(ingreds)
    return (
        <>
        <h5>{t('ingredients.ingredients')}</h5>
        <ListGroup variant="flush">
            {
ingz.map((ingredient : Ingredient, index:number) =>(
  
<FoodIngredient key={index} ingredient={ingredient} index={index}/>

  
   ))
}
</ListGroup>
        </>
    )

}