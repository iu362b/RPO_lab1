import React, {useEffect, useState} from 'react';
import BackendService from '../services/BackendService';
import {FontAwesomeIcon} from '@fortawesome/react-fontawesome';
import {alertActions} from "../utils/Rdx";
import {connect} from "react-redux";
import {Form} from "react-bootstrap";
import {useNavigate, useParams} from "react-router-dom";
import {faChevronLeft, faSave} from "@fortawesome/free-solid-svg-icons";

const ArtistComponent = props => {
    const params = useParams();

    const [id, setId] = useState(params.id);
    const [name, setName] = useState("");
    const [century, setCentury] = useState("");

    // Приходится использовать пока что дефолтное значение внешнего ключа, иначе будет ошибка
    const [country_id, setCountryID] = useState(52);

    const [hidden, setHidden] = useState(false);
    const navigate = useNavigate();

    useEffect(() => {
        if (parseInt(id) !== -1) {
            BackendService.retrieveArtist(id)
                .then((resp) => {
                    setName(resp.data.name)
                    setCentury(resp.data.century)
                    setCountryID(resp.data.country.id);
                })
                .catch(() => setHidden(true))
        }
    }, []); // [] нужны для вызова useEffect только один раз при инициализации компонента
    // это нужно для того, чтобы в состояние name каждый раз не записывалось значение из БД

    const onSubmit = (event) => {
        event.preventDefault();
        event.stopPropagation();
        let err = null;

        if (!name) err = "Название художника должно быть указано";
        if (!century) err = "Век художника должен быть указан";

        if (err) props.dispatch(alertActions.error(err));
        let artist = {id:id, name:name, century:century, country:{id:country_id}};

        console.log(artist)

        if (parseInt(artist.id) === -1) {
            BackendService.createArtist(artist)
                .then(() => navigate(`/artists`))
                .catch(() => {
                })
        } else {
            BackendService.updateArtist(artist)
                .then(() => navigate(`/artists`))
                .catch(() => {
                })
        }
    }

    if (hidden)
        return null;
    return (
        <div className="m-4">
            <div className="row my-2">
                <div className="col-auto me-auto"><h3>Художник</h3></div>
                <div className="col-auto"><button className="btn btn-outline-secondary"
                        onClick={() => navigate(`/artists`)}
                ><FontAwesomeIcon icon={faChevronLeft}/>{' '}Назад</button></div>
            </div>
            <Form onSubmit={onSubmit}>
                <Form.Group>
                    <Form.Label>Имя</Form.Label>
                    <Form.Control
                        type="text"
                        placeholder="Введите имя художника"
                        onChange={(e) => {setName(e.target.value)}}
                        value={name}
                        name="name"
                        autoComplete="off"
                    />

                    <Form.Label className="mt-2">Век</Form.Label>
                    <Form.Control
                        type="text"
                        placeholder="Введите век художника"
                        onChange={(e) => {setCentury(e.target.value)}}
                        value={century}
                        name="century"
                        autoComplete="off"
                    />
                </Form.Group>
                <button className="btn btn-outline-secondary mt-2" type="submit">
                    <FontAwesomeIcon icon={faSave}/>{' '}
                    Сохранить
                </button>
            </Form>
        </div>
    )
}

export default connect()(ArtistComponent);